; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_sock_put_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_sock_put_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i64, i64, %struct.TYPE_5__, %struct.TYPE_4__, %struct.cxgbi_device* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.cxgbi_device = type { %struct.TYPE_6__**, %struct.cxgbi_ports_map }
%struct.TYPE_6__ = type { i32 }
%struct.cxgbi_ports_map = type { i32, i32, i32, i32, i32** }

@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"cdev 0x%p, p#%u %s, port %u OOR.\0A\00", align 1
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"cdev 0x%p, p#%u %s, release %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_sock*)* @sock_put_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sock_put_port(%struct.cxgbi_sock* %0) #0 {
  %2 = alloca %struct.cxgbi_sock*, align 8
  %3 = alloca %struct.cxgbi_device*, align 8
  %4 = alloca %struct.cxgbi_ports_map*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %2, align 8
  %7 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %8 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %7, i32 0, i32 4
  %9 = load %struct.cxgbi_device*, %struct.cxgbi_device** %8, align 8
  store %struct.cxgbi_device* %9, %struct.cxgbi_device** %3, align 8
  %10 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %11 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %10, i32 0, i32 1
  store %struct.cxgbi_ports_map* %11, %struct.cxgbi_ports_map** %4, align 8
  %12 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %13 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AF_INET, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %19 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i64* %20, i64** %5, align 8
  br label %25

21:                                               ; preds = %1
  %22 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %23 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i64* %24, i64** %5, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i64*, i64** %5, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %106

29:                                               ; preds = %25
  %30 = load i64*, i64** %5, align 8
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @ntohs(i64 %31)
  %33 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %4, align 8
  %34 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %32, %35
  store i32 %36, i32* %6, align 4
  %37 = load i64*, i64** %5, align 8
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %4, align 8
  %43 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sge i32 %41, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %40, %29
  %47 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %48 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %49 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %52 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %52, align 8
  %54 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %55 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %53, i64 %56
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64*, i64** %5, align 8
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @ntohs(i64 %62)
  %64 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_device* %47, i64 %50, i32 %60, i32 %63)
  br label %106

65:                                               ; preds = %40
  %66 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %4, align 8
  %67 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %66, i32 0, i32 2
  %68 = call i32 @spin_lock_bh(i32* %67)
  %69 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %4, align 8
  %70 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %69, i32 0, i32 4
  %71 = load i32**, i32*** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  store i32* null, i32** %74, align 8
  %75 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %4, align 8
  %76 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %4, align 8
  %80 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %79, i32 0, i32 2
  %81 = call i32 @spin_unlock_bh(i32* %80)
  %82 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %83 = shl i32 1, %82
  %84 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %85 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %86 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %89 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %89, align 8
  %91 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %92 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %90, i64 %93
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.cxgbi_ports_map*, %struct.cxgbi_ports_map** %4, align 8
  %99 = getelementptr inbounds %struct.cxgbi_ports_map, %struct.cxgbi_ports_map* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %100, %101
  %103 = call i32 @log_debug(i32 %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.cxgbi_device* %84, i64 %87, i32 %97, i32 %102)
  %104 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %105 = call i32 @cxgbi_sock_put(%struct.cxgbi_sock* %104)
  br label %106

106:                                              ; preds = %46, %65, %25
  ret void
}

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @pr_err(i8*, %struct.cxgbi_device*, i64, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_device*, i64, i32, i32) #1

declare dso_local i32 @cxgbi_sock_put(%struct.cxgbi_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
