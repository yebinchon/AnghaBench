; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_block_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_block_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DEBUG_CHANNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"blocking all channels\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gigaset_block_channels(%struct.cardstate* %0) #0 {
  %2 = alloca %struct.cardstate*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.cardstate* %0, %struct.cardstate** %2, align 8
  %5 = load i32, i32* @DEBUG_CHANNEL, align 4
  %6 = call i32 @gig_dbg(i32 %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %8 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %7, i32 0, i32 1
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %27, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %14 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %19 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %11

30:                                               ; preds = %11
  %31 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %32 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %31, i32 0, i32 1
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  ret void
}

declare dso_local i32 @gig_dbg(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
