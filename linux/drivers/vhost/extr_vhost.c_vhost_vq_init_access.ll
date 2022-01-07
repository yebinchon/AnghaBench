; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_vq_init_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_vq_init_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_virtqueue = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Can't access used idx at %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vhost_vq_init_access(%struct.vhost_virtqueue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vhost_virtqueue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vhost_virtqueue* %0, %struct.vhost_virtqueue** %3, align 8
  %7 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %8 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %11 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

15:                                               ; preds = %1
  %16 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %17 = call i32 @vhost_init_is_le(%struct.vhost_virtqueue* %16)
  %18 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %19 = call i32 @vhost_update_used_flags(%struct.vhost_virtqueue* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %58

23:                                               ; preds = %15
  %24 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %25 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %27 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %23
  %31 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %32 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @access_ok(i32* %34, i32 4)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @EFAULT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %58

40:                                               ; preds = %30, %23
  %41 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %42 = call i32 @vhost_get_used_idx(%struct.vhost_virtqueue* %41, i32* %4)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %47 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %48 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @vq_err(%struct.vhost_virtqueue* %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %50)
  br label %58

52:                                               ; preds = %40
  %53 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @vhost16_to_cpu(%struct.vhost_virtqueue* %53, i32 %54)
  %56 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %57 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  store i32 0, i32* %2, align 4
  br label %63

58:                                               ; preds = %45, %37, %22
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %61 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %58, %52, %14
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @vhost_init_is_le(%struct.vhost_virtqueue*) #1

declare dso_local i32 @vhost_update_used_flags(%struct.vhost_virtqueue*) #1

declare dso_local i32 @access_ok(i32*, i32) #1

declare dso_local i32 @vhost_get_used_idx(%struct.vhost_virtqueue*, i32*) #1

declare dso_local i32 @vq_err(%struct.vhost_virtqueue*, i8*, i32*) #1

declare dso_local i32 @vhost16_to_cpu(%struct.vhost_virtqueue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
