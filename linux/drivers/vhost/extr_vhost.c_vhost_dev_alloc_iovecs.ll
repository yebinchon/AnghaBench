; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_dev_alloc_iovecs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_dev_alloc_iovecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_dev = type { i32, %struct.vhost_virtqueue**, i32 }
%struct.vhost_virtqueue = type { i8*, i8*, i8* }

@UIO_MAXIOV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vhost_dev*)* @vhost_dev_alloc_iovecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vhost_dev_alloc_iovecs(%struct.vhost_dev* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vhost_dev*, align 8
  %4 = alloca %struct.vhost_virtqueue*, align 8
  %5 = alloca i32, align 4
  store %struct.vhost_dev* %0, %struct.vhost_dev** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %55, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %9 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %58

12:                                               ; preds = %6
  %13 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %14 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %13, i32 0, i32 1
  %15 = load %struct.vhost_virtqueue**, %struct.vhost_virtqueue*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %15, i64 %17
  %19 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %18, align 8
  store %struct.vhost_virtqueue* %19, %struct.vhost_virtqueue** %4, align 8
  %20 = load i32, i32* @UIO_MAXIOV, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kmalloc_array(i32 %20, i32 1, i32 %21)
  %23 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %24 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %26 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kmalloc_array(i32 %27, i32 1, i32 %28)
  %30 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %31 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %33 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kmalloc_array(i32 %34, i32 1, i32 %35)
  %37 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %38 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %40 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %12
  %44 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %45 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %50 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %48, %43, %12
  br label %59

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %6

58:                                               ; preds = %6
  store i64 0, i64* %2, align 8
  br label %78

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %72, %59
  %61 = load i32, i32* %5, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %65 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %64, i32 0, i32 1
  %66 = load %struct.vhost_virtqueue**, %struct.vhost_virtqueue*** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %66, i64 %68
  %70 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %69, align 8
  %71 = call i32 @vhost_vq_free_iovecs(%struct.vhost_virtqueue* %70)
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %5, align 4
  br label %60

75:                                               ; preds = %60
  %76 = load i64, i64* @ENOMEM, align 8
  %77 = sub nsw i64 0, %76
  store i64 %77, i64* %2, align 8
  br label %78

78:                                               ; preds = %75, %58
  %79 = load i64, i64* %2, align 8
  ret i64 %79
}

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @vhost_vq_free_iovecs(%struct.vhost_virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
