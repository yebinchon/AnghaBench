; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_get_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_get_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.vc_data*, i32*)* @get_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @get_attributes(%struct.vc_data* %0, i32* %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %8 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i32*
  %11 = ptrtoint i32* %6 to i64
  %12 = ptrtoint i32* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = call i32* @screen_pos(%struct.vc_data* %5, i32 %15, i32 1)
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @scr_readw(i32* %17)
  %19 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %20 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = xor i32 %21, -1
  %23 = and i32 %18, %22
  %24 = ashr i32 %23, 8
  %25 = trunc i32 %24 to i8
  ret i8 %25
}

declare dso_local i32* @screen_pos(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @scr_readw(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
