; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_cm.c___cxgbit_setup_cdev_np.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_cm.c___cxgbit_setup_cdev_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cxgbit_np = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CDEV_STATE_UP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbit_device*, %struct.cxgbit_np*)* @__cxgbit_setup_cdev_np to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cxgbit_setup_cdev_np(%struct.cxgbit_device* %0, %struct.cxgbit_np* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxgbit_device*, align 8
  %5 = alloca %struct.cxgbit_np*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cxgbit_device* %0, %struct.cxgbit_device** %4, align 8
  store %struct.cxgbit_np* %1, %struct.cxgbit_np** %5, align 8
  %9 = load %struct.cxgbit_np*, %struct.cxgbit_np** %5, align 8
  %10 = getelementptr inbounds %struct.cxgbit_np, %struct.cxgbit_np* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @CDEV_STATE_UP, align 4
  %15 = load %struct.cxgbit_device*, %struct.cxgbit_device** %4, align 8
  %16 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %15, i32 0, i32 1
  %17 = call i32 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %88

22:                                               ; preds = %2
  %23 = load %struct.cxgbit_device*, %struct.cxgbit_device** %4, align 8
  %24 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.cxgbit_np*, %struct.cxgbit_np** %5, align 8
  %29 = call i32 @cxgb4_alloc_stid(i32 %26, i32 %27, %struct.cxgbit_np* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %88

35:                                               ; preds = %22
  %36 = load %struct.cxgbit_device*, %struct.cxgbit_device** %4, align 8
  %37 = load %struct.cxgbit_np*, %struct.cxgbit_np** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @cxgbit_np_hash_add(%struct.cxgbit_device* %36, %struct.cxgbit_np* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %35
  %42 = load %struct.cxgbit_device*, %struct.cxgbit_device** %4, align 8
  %43 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @cxgb4_free_stid(i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %88

51:                                               ; preds = %35
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @AF_INET, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.cxgbit_device*, %struct.cxgbit_device** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.cxgbit_np*, %struct.cxgbit_np** %5, align 8
  %59 = call i32 @cxgbit_create_server4(%struct.cxgbit_device* %56, i32 %57, %struct.cxgbit_np* %58)
  store i32 %59, i32* %7, align 4
  br label %65

60:                                               ; preds = %51
  %61 = load %struct.cxgbit_device*, %struct.cxgbit_device** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.cxgbit_np*, %struct.cxgbit_np** %5, align 8
  %64 = call i32 @cxgbit_create_server6(%struct.cxgbit_device* %61, i32 %62, %struct.cxgbit_np* %63)
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @ETIMEDOUT, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.cxgbit_device*, %struct.cxgbit_device** %4, align 8
  %75 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @cxgb4_free_stid(i32 %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %73, %68
  %82 = load %struct.cxgbit_device*, %struct.cxgbit_device** %4, align 8
  %83 = load %struct.cxgbit_np*, %struct.cxgbit_np** %5, align 8
  %84 = call i32 @cxgbit_np_hash_del(%struct.cxgbit_device* %82, %struct.cxgbit_np* %83)
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %88

86:                                               ; preds = %65
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %81, %41, %32, %19
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @cxgb4_alloc_stid(i32, i32, %struct.cxgbit_np*) #1

declare dso_local i32 @cxgbit_np_hash_add(%struct.cxgbit_device*, %struct.cxgbit_np*, i32) #1

declare dso_local i32 @cxgb4_free_stid(i32, i32, i32) #1

declare dso_local i32 @cxgbit_create_server4(%struct.cxgbit_device*, i32, %struct.cxgbit_np*) #1

declare dso_local i32 @cxgbit_create_server6(%struct.cxgbit_device*, i32, %struct.cxgbit_np*) #1

declare dso_local i32 @cxgbit_np_hash_del(%struct.cxgbit_device*, %struct.cxgbit_np*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
