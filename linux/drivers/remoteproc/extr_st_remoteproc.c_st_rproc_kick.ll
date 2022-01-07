; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_remoteproc.c_st_rproc_kick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_remoteproc.c_st_rproc_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { %struct.TYPE_2__, %struct.st_rproc* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.st_rproc = type { i32* }

@ST_RPROC_MAX_VRING = common dso_local global i32 0, align 4
@MBOX_MAX = common dso_local global i32 0, align 4
@MBOX_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to send message via mbox: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rproc*, i32)* @st_rproc_kick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_rproc_kick(%struct.rproc* %0, i32 %1) #0 {
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_rproc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rproc*, %struct.rproc** %3, align 8
  %9 = getelementptr inbounds %struct.rproc, %struct.rproc* %8, i32 0, i32 1
  %10 = load %struct.st_rproc*, %struct.st_rproc** %9, align 8
  store %struct.st_rproc* %10, %struct.st_rproc** %5, align 8
  %11 = load %struct.rproc*, %struct.rproc** %3, align 8
  %12 = getelementptr inbounds %struct.rproc, %struct.rproc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @ST_RPROC_MAX_VRING, align 4
  %17 = icmp sge i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %42

22:                                               ; preds = %2
  %23 = load %struct.st_rproc*, %struct.st_rproc** %5, align 8
  %24 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MBOX_MAX, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load i32, i32* @MBOX_TX, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %25, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = bitcast i32* %4 to i8*
  %35 = call i32 @mbox_send_message(i32 %33, i8* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %22
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %21, %38, %22
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mbox_send_message(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
