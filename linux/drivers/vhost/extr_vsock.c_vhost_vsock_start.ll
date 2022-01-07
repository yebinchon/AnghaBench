; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vsock.c_vhost_vsock_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vsock.c_vhost_vsock_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_vsock = type { %struct.TYPE_2__, %struct.vhost_virtqueue* }
%struct.TYPE_2__ = type { i32 }
%struct.vhost_virtqueue = type { i32, %struct.vhost_vsock* }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_vsock*)* @vhost_vsock_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_vsock_start(%struct.vhost_vsock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vhost_vsock*, align 8
  %4 = alloca %struct.vhost_virtqueue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.vhost_vsock* %0, %struct.vhost_vsock** %3, align 8
  %7 = load %struct.vhost_vsock*, %struct.vhost_vsock** %3, align 8
  %8 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.vhost_vsock*, %struct.vhost_vsock** %3, align 8
  %12 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %11, i32 0, i32 0
  %13 = call i32 @vhost_dev_check_owner(%struct.TYPE_2__* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %98

17:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %18

18:                                               ; preds = %59, %17
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.vhost_vsock*, %struct.vhost_vsock** %3, align 8
  %21 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %20, i32 0, i32 1
  %22 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %21, align 8
  %23 = call i64 @ARRAY_SIZE(%struct.vhost_virtqueue* %22)
  %24 = icmp ult i64 %19, %23
  br i1 %24, label %25, label %62

25:                                               ; preds = %18
  %26 = load %struct.vhost_vsock*, %struct.vhost_vsock** %3, align 8
  %27 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %26, i32 0, i32 1
  %28 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %28, i64 %29
  store %struct.vhost_virtqueue* %30, %struct.vhost_virtqueue** %4, align 8
  %31 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %32 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %35 = call i32 @vhost_vq_access_ok(%struct.vhost_virtqueue* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %25
  %38 = load i32, i32* @EFAULT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %67

40:                                               ; preds = %25
  %41 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %42 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %41, i32 0, i32 1
  %43 = load %struct.vhost_vsock*, %struct.vhost_vsock** %42, align 8
  %44 = icmp ne %struct.vhost_vsock* %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = load %struct.vhost_vsock*, %struct.vhost_vsock** %3, align 8
  %47 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %48 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %47, i32 0, i32 1
  store %struct.vhost_vsock* %46, %struct.vhost_vsock** %48, align 8
  %49 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %50 = call i32 @vhost_vq_init_access(%struct.vhost_virtqueue* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %67

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %40
  %56 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %57 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  br label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %5, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %5, align 8
  br label %18

62:                                               ; preds = %18
  %63 = load %struct.vhost_vsock*, %struct.vhost_vsock** %3, align 8
  %64 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  store i32 0, i32* %2, align 4
  br label %104

67:                                               ; preds = %53, %37
  %68 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %69 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %68, i32 0, i32 1
  store %struct.vhost_vsock* null, %struct.vhost_vsock** %69, align 8
  %70 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %71 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  store i64 0, i64* %5, align 8
  br label %73

73:                                               ; preds = %94, %67
  %74 = load i64, i64* %5, align 8
  %75 = load %struct.vhost_vsock*, %struct.vhost_vsock** %3, align 8
  %76 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %75, i32 0, i32 1
  %77 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %76, align 8
  %78 = call i64 @ARRAY_SIZE(%struct.vhost_virtqueue* %77)
  %79 = icmp ult i64 %74, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %73
  %81 = load %struct.vhost_vsock*, %struct.vhost_vsock** %3, align 8
  %82 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %81, i32 0, i32 1
  %83 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %82, align 8
  %84 = load i64, i64* %5, align 8
  %85 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %83, i64 %84
  store %struct.vhost_virtqueue* %85, %struct.vhost_virtqueue** %4, align 8
  %86 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %87 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %86, i32 0, i32 0
  %88 = call i32 @mutex_lock(i32* %87)
  %89 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %90 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %89, i32 0, i32 1
  store %struct.vhost_vsock* null, %struct.vhost_vsock** %90, align 8
  %91 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %92 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  br label %94

94:                                               ; preds = %80
  %95 = load i64, i64* %5, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %5, align 8
  br label %73

97:                                               ; preds = %73
  br label %98

98:                                               ; preds = %97, %16
  %99 = load %struct.vhost_vsock*, %struct.vhost_vsock** %3, align 8
  %100 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %98, %62
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vhost_dev_check_owner(%struct.TYPE_2__*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.vhost_virtqueue*) #1

declare dso_local i32 @vhost_vq_access_ok(%struct.vhost_virtqueue*) #1

declare dso_local i32 @vhost_vq_init_access(%struct.vhost_virtqueue*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
