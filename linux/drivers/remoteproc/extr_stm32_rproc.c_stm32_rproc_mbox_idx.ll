; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_stm32_rproc.c_stm32_rproc_mbox_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_stm32_rproc.c_stm32_rproc_mbox_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32, %struct.stm32_rproc* }
%struct.stm32_rproc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"mailbox %s not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*, i8*)* @stm32_rproc_mbox_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_rproc_mbox_idx(%struct.rproc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rproc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stm32_rproc*, align 8
  %7 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.rproc*, %struct.rproc** %4, align 8
  %9 = getelementptr inbounds %struct.rproc, %struct.rproc* %8, i32 0, i32 1
  %10 = load %struct.stm32_rproc*, %struct.stm32_rproc** %9, align 8
  store %struct.stm32_rproc* %10, %struct.stm32_rproc** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %35, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.stm32_rproc*, %struct.stm32_rproc** %6, align 8
  %14 = getelementptr inbounds %struct.stm32_rproc, %struct.stm32_rproc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %15)
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %11
  %19 = load %struct.stm32_rproc*, %struct.stm32_rproc** %6, align 8
  %20 = getelementptr inbounds %struct.stm32_rproc, %struct.stm32_rproc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = call i32 @strncmp(i32 %26, i8* %27, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %18
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %45

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %11

38:                                               ; preds = %11
  %39 = load %struct.rproc*, %struct.rproc** %4, align 8
  %40 = getelementptr inbounds %struct.rproc, %struct.rproc* %39, i32 0, i32 0
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %38, %32
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
