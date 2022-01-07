; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-rpipe.c_wa_rpipes_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-rpipe.c_wa_rpipes_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wahc = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wa_rpipes_create(%struct.wahc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wahc*, align 8
  store %struct.wahc* %0, %struct.wahc** %3, align 8
  %4 = load %struct.wahc*, %struct.wahc** %3, align 8
  %5 = getelementptr inbounds %struct.wahc, %struct.wahc* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @le16_to_cpu(i32 %8)
  %10 = load %struct.wahc*, %struct.wahc** %3, align 8
  %11 = getelementptr inbounds %struct.wahc, %struct.wahc* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load %struct.wahc*, %struct.wahc** %3, align 8
  %13 = getelementptr inbounds %struct.wahc, %struct.wahc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @bitmap_zalloc(i32 %14, i32 %15)
  %17 = load %struct.wahc*, %struct.wahc** %3, align 8
  %18 = getelementptr inbounds %struct.wahc, %struct.wahc* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.wahc*, %struct.wahc** %3, align 8
  %20 = getelementptr inbounds %struct.wahc, %struct.wahc* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32* @bitmap_zalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
