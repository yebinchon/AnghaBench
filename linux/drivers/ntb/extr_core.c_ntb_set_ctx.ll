; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_core.c_ntb_set_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_core.c_ntb_set_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { i32, %struct.ntb_ctx_ops*, i8* }
%struct.ntb_ctx_ops = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntb_set_ctx(%struct.ntb_dev* %0, i8* %1, %struct.ntb_ctx_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntb_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ntb_ctx_ops*, align 8
  %8 = alloca i64, align 8
  store %struct.ntb_dev* %0, %struct.ntb_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ntb_ctx_ops* %2, %struct.ntb_ctx_ops** %7, align 8
  %9 = load %struct.ntb_ctx_ops*, %struct.ntb_ctx_ops** %7, align 8
  %10 = call i32 @ntb_ctx_ops_is_valid(%struct.ntb_ctx_ops* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %38

15:                                               ; preds = %3
  %16 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %17 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %16, i32 0, i32 1
  %18 = load %struct.ntb_ctx_ops*, %struct.ntb_ctx_ops** %17, align 8
  %19 = icmp ne %struct.ntb_ctx_ops* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %38

23:                                               ; preds = %15
  %24 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %25 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %30 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.ntb_ctx_ops*, %struct.ntb_ctx_ops** %7, align 8
  %32 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %33 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %32, i32 0, i32 1
  store %struct.ntb_ctx_ops* %31, %struct.ntb_ctx_ops** %33, align 8
  %34 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %35 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %23, %20, %12
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @ntb_ctx_ops_is_valid(%struct.ntb_ctx_ops*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
