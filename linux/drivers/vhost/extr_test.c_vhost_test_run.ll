; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_test.c_vhost_test_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_test.c_vhost_test_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_test = type { %struct.TYPE_2__, %struct.vhost_virtqueue* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vhost_virtqueue = type { i32, i8* }

@EINVAL = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vhost_test*, i32)* @vhost_test_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vhost_test_run(%struct.vhost_test* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.vhost_test*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vhost_virtqueue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vhost_test* %0, %struct.vhost_test** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %2
  %17 = load i64, i64* @EINVAL, align 8
  %18 = sub nsw i64 0, %17
  store i64 %18, i64* %3, align 8
  br label %122

19:                                               ; preds = %13
  %20 = load %struct.vhost_test*, %struct.vhost_test** %4, align 8
  %21 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.vhost_test*, %struct.vhost_test** %4, align 8
  %25 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %24, i32 0, i32 0
  %26 = call i32 @vhost_dev_check_owner(%struct.TYPE_2__* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %115

30:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %51, %30
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.vhost_test*, %struct.vhost_test** %4, align 8
  %34 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %31
  %39 = load %struct.vhost_test*, %struct.vhost_test** %4, align 8
  %40 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %39, i32 0, i32 1
  %41 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %41, i64 %43
  %45 = call i32 @vhost_vq_access_ok(%struct.vhost_virtqueue* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @EFAULT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %115

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %31

54:                                               ; preds = %31
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %107, %54
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.vhost_test*, %struct.vhost_test** %4, align 8
  %58 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %110

62:                                               ; preds = %55
  %63 = load %struct.vhost_test*, %struct.vhost_test** %4, align 8
  %64 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %63, i32 0, i32 1
  %65 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %65, i64 %67
  store %struct.vhost_virtqueue* %68, %struct.vhost_virtqueue** %8, align 8
  %69 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %8, align 8
  %70 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %69, i32 0, i32 0
  %71 = call i32 @mutex_lock(i32* %70)
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %62
  %75 = load %struct.vhost_test*, %struct.vhost_test** %4, align 8
  br label %77

76:                                               ; preds = %62
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi %struct.vhost_test* [ %75, %74 ], [ null, %76 ]
  %79 = bitcast %struct.vhost_test* %78 to i8*
  store i8* %79, i8** %6, align 8
  %80 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %8, align 8
  %81 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %7, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %8, align 8
  %85 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load %struct.vhost_test*, %struct.vhost_test** %4, align 8
  %87 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %86, i32 0, i32 1
  %88 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %88, i64 %90
  %92 = call i32 @vhost_vq_init_access(%struct.vhost_virtqueue* %91)
  store i32 %92, i32* %9, align 4
  %93 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %8, align 8
  %94 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %93, i32 0, i32 0
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %77
  br label %115

99:                                               ; preds = %77
  %100 = load i8*, i8** %7, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load %struct.vhost_test*, %struct.vhost_test** %4, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @vhost_test_flush_vq(%struct.vhost_test* %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %99
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %55

110:                                              ; preds = %55
  %111 = load %struct.vhost_test*, %struct.vhost_test** %4, align 8
  %112 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = call i32 @mutex_unlock(i32* %113)
  store i64 0, i64* %3, align 8
  br label %122

115:                                              ; preds = %98, %47, %29
  %116 = load %struct.vhost_test*, %struct.vhost_test** %4, align 8
  %117 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  store i64 %121, i64* %3, align 8
  br label %122

122:                                              ; preds = %115, %110, %16
  %123 = load i64, i64* %3, align 8
  ret i64 %123
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vhost_dev_check_owner(%struct.TYPE_2__*) #1

declare dso_local i32 @vhost_vq_access_ok(%struct.vhost_virtqueue*) #1

declare dso_local i32 @vhost_vq_init_access(%struct.vhost_virtqueue*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vhost_test_flush_vq(%struct.vhost_test*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
