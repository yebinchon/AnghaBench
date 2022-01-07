; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_gpio_send_cmdargs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_gpio_send_cmdargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.broadsheetfb_par = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.broadsheetfb_par*, i32, i32)*, i32 (%struct.broadsheetfb_par*)* }

@BS_CS = common dso_local global i32 0, align 4
@BS_DC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.broadsheetfb_par*, i32, i32, i32*)* @broadsheet_gpio_send_cmdargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @broadsheet_gpio_send_cmdargs(%struct.broadsheetfb_par* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.broadsheetfb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.broadsheetfb_par* %0, %struct.broadsheetfb_par** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %5, align 8
  %11 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32 (%struct.broadsheetfb_par*)*, i32 (%struct.broadsheetfb_par*)** %13, align 8
  %15 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %5, align 8
  %16 = call i32 %14(%struct.broadsheetfb_par* %15)
  %17 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %5, align 8
  %18 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.broadsheetfb_par*, i32, i32)*, i32 (%struct.broadsheetfb_par*, i32, i32)** %20, align 8
  %22 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %5, align 8
  %23 = load i32, i32* @BS_CS, align 4
  %24 = call i32 %21(%struct.broadsheetfb_par* %22, i32 %23, i32 0)
  %25 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @broadsheet_gpio_issue_cmd(%struct.broadsheetfb_par* %25, i32 %26)
  %28 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %5, align 8
  %29 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.broadsheetfb_par*, i32, i32)*, i32 (%struct.broadsheetfb_par*, i32, i32)** %31, align 8
  %33 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %5, align 8
  %34 = load i32, i32* @BS_DC, align 4
  %35 = call i32 %32(%struct.broadsheetfb_par* %33, i32 %34, i32 1)
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %48, %4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %5, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @broadsheet_gpio_issue_data(%struct.broadsheetfb_par* %41, i32 %46)
  br label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %36

51:                                               ; preds = %36
  %52 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %5, align 8
  %53 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%struct.broadsheetfb_par*, i32, i32)*, i32 (%struct.broadsheetfb_par*, i32, i32)** %55, align 8
  %57 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %5, align 8
  %58 = load i32, i32* @BS_CS, align 4
  %59 = call i32 %56(%struct.broadsheetfb_par* %57, i32 %58, i32 1)
  ret void
}

declare dso_local i32 @broadsheet_gpio_issue_cmd(%struct.broadsheetfb_par*, i32) #1

declare dso_local i32 @broadsheet_gpio_issue_data(%struct.broadsheetfb_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
