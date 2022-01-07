; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_find_sock_on_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_find_sock_on_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i8 }
%struct.cxgbi_device = type { %struct.cxgbi_ports_map }
%struct.cxgbi_ports_map = type { i32, i32, i32, %struct.cxgbi_sock** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cxgbi_sock* (%struct.cxgbi_device*, i8)* @find_sock_on_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cxgbi_sock* @find_sock_on_port(%struct.cxgbi_device* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.cxgbi_sock*, align 8
  %4 = alloca %struct.cxgbi_device*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.cxgbi_ports_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cxgbi_sock*, align 8
  store %struct.cxgbi_device* %0, %struct.cxgbi_device** %4, align 8
  store i8 %1, i8* %5, align 1
  %10 = load %struct.cxgbi_device*, %struct.cxgbi_device** %4, align 8
  %11 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %10, i32 0, i32 0
  store %struct.cxgbi_ports_map* %11, %struct.cxgbi_ports_map** %6, align 8
  %12 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %6, align 8
  %13 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %6, align 8
  %18 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %2
  store %struct.cxgbi_sock* null, %struct.cxgbi_sock** %3, align 8
  br label %74

22:                                               ; preds = %16
  %23 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %6, align 8
  %24 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %23, i32 0, i32 2
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %6, align 8
  %27 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %67, %22
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %6, align 8
  %35 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br label %38

38:                                               ; preds = %32, %29
  %39 = phi i1 [ false, %29 ], [ %37, %32 ]
  br i1 %39, label %40, label %70

40:                                               ; preds = %38
  %41 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %6, align 8
  %42 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %41, i32 0, i32 3
  %43 = load %struct.cxgbi_sock**, %struct.cxgbi_sock*** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.cxgbi_sock*, %struct.cxgbi_sock** %43, i64 %45
  %47 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %46, align 8
  store %struct.cxgbi_sock* %47, %struct.cxgbi_sock** %9, align 8
  %48 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %9, align 8
  %49 = icmp ne %struct.cxgbi_sock* %48, null
  br i1 %49, label %50, label %66

50:                                               ; preds = %40
  %51 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %9, align 8
  %52 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %51, i32 0, i32 0
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* %5, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %6, align 8
  %60 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %59, i32 0, i32 2
  %61 = call i32 @spin_unlock_bh(i32* %60)
  %62 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %9, align 8
  store %struct.cxgbi_sock* %62, %struct.cxgbi_sock** %3, align 8
  br label %74

63:                                               ; preds = %50
  %64 = load i32, i32* %8, align 4
  %65 = add i32 %64, -1
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %63, %40
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %29

70:                                               ; preds = %38
  %71 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %6, align 8
  %72 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %71, i32 0, i32 2
  %73 = call i32 @spin_unlock_bh(i32* %72)
  store %struct.cxgbi_sock* null, %struct.cxgbi_sock** %3, align 8
  br label %74

74:                                               ; preds = %70, %58, %21
  %75 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  ret %struct.cxgbi_sock* %75
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
