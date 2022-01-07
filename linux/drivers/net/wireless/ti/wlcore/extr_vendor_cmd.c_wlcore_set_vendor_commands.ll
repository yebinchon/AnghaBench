; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_vendor_cmd.c_wlcore_set_vendor_commands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_vendor_cmd.c_wlcore_set_vendor_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i8*, i8*, i8*, i8* }

@wlcore_vendor_commands = common dso_local global i8* null, align 8
@wlcore_vendor_events = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlcore_set_vendor_commands(%struct.wiphy* %0) #0 {
  %2 = alloca %struct.wiphy*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %2, align 8
  %3 = load i8*, i8** @wlcore_vendor_commands, align 8
  %4 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %5 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %4, i32 0, i32 3
  store i8* %3, i8** %5, align 8
  %6 = load i8*, i8** @wlcore_vendor_commands, align 8
  %7 = call i8* @ARRAY_SIZE(i8* %6)
  %8 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %9 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %8, i32 0, i32 2
  store i8* %7, i8** %9, align 8
  %10 = load i8*, i8** @wlcore_vendor_events, align 8
  %11 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %12 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** @wlcore_vendor_events, align 8
  %14 = call i8* @ARRAY_SIZE(i8* %13)
  %15 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %16 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  ret void
}

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
