; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_cm.c_cxgbit_np_hash_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_cm.c_cxgbit_np_hash_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_device = type { i32, %struct.np_info** }
%struct.np_info = type { i32, %struct.np_info*, %struct.cxgbit_np* }
%struct.cxgbit_np = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbit_device*, %struct.cxgbit_np*)* @cxgbit_np_hash_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_np_hash_del(%struct.cxgbit_device* %0, %struct.cxgbit_np* %1) #0 {
  %3 = alloca %struct.cxgbit_device*, align 8
  %4 = alloca %struct.cxgbit_np*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.np_info*, align 8
  %8 = alloca %struct.np_info**, align 8
  store %struct.cxgbit_device* %0, %struct.cxgbit_device** %3, align 8
  store %struct.cxgbit_np* %1, %struct.cxgbit_np** %4, align 8
  store i32 -1, i32* %5, align 4
  %9 = load %struct.cxgbit_np*, %struct.cxgbit_np** %4, align 8
  %10 = call i32 @cxgbit_np_hashfn(%struct.cxgbit_np* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.cxgbit_device*, %struct.cxgbit_device** %3, align 8
  %12 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %11, i32 0, i32 1
  %13 = load %struct.np_info**, %struct.np_info*** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.np_info*, %struct.np_info** %13, i64 %15
  store %struct.np_info** %16, %struct.np_info*** %8, align 8
  %17 = load %struct.cxgbit_device*, %struct.cxgbit_device** %3, align 8
  %18 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.np_info**, %struct.np_info*** %8, align 8
  %21 = load %struct.np_info*, %struct.np_info** %20, align 8
  store %struct.np_info* %21, %struct.np_info** %7, align 8
  br label %22

22:                                               ; preds = %42, %2
  %23 = load %struct.np_info*, %struct.np_info** %7, align 8
  %24 = icmp ne %struct.np_info* %23, null
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = load %struct.np_info*, %struct.np_info** %7, align 8
  %27 = getelementptr inbounds %struct.np_info, %struct.np_info* %26, i32 0, i32 2
  %28 = load %struct.cxgbit_np*, %struct.cxgbit_np** %27, align 8
  %29 = load %struct.cxgbit_np*, %struct.cxgbit_np** %4, align 8
  %30 = icmp eq %struct.cxgbit_np* %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.np_info*, %struct.np_info** %7, align 8
  %33 = getelementptr inbounds %struct.np_info, %struct.np_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %5, align 4
  %35 = load %struct.np_info*, %struct.np_info** %7, align 8
  %36 = getelementptr inbounds %struct.np_info, %struct.np_info* %35, i32 0, i32 1
  %37 = load %struct.np_info*, %struct.np_info** %36, align 8
  %38 = load %struct.np_info**, %struct.np_info*** %8, align 8
  store %struct.np_info* %37, %struct.np_info** %38, align 8
  %39 = load %struct.np_info*, %struct.np_info** %7, align 8
  %40 = call i32 @kfree(%struct.np_info* %39)
  br label %48

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.np_info*, %struct.np_info** %7, align 8
  %44 = getelementptr inbounds %struct.np_info, %struct.np_info* %43, i32 0, i32 1
  store %struct.np_info** %44, %struct.np_info*** %8, align 8
  %45 = load %struct.np_info*, %struct.np_info** %7, align 8
  %46 = getelementptr inbounds %struct.np_info, %struct.np_info* %45, i32 0, i32 1
  %47 = load %struct.np_info*, %struct.np_info** %46, align 8
  store %struct.np_info* %47, %struct.np_info** %7, align 8
  br label %22

48:                                               ; preds = %31, %22
  %49 = load %struct.cxgbit_device*, %struct.cxgbit_device** %3, align 8
  %50 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @cxgbit_np_hashfn(%struct.cxgbit_np*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kfree(%struct.np_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
