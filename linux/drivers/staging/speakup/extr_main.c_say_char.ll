; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_say_char.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_say_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@spk_attr = common dso_local global i64 0, align 8
@spk_old_attr = common dso_local global i64 0, align 8
@spk_pos = common dso_local global i64 0, align 8
@spk_attrib_bleep = common dso_local global i32 0, align 4
@spk_y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @say_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @say_char(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %4 = load i64, i64* @spk_attr, align 8
  store i64 %4, i64* @spk_old_attr, align 8
  %5 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %6 = load i64, i64* @spk_pos, align 8
  %7 = inttoptr i64 %6 to i32*
  %8 = call i32 @get_char(%struct.vc_data* %5, i32* %7, i64* @spk_attr)
  store i32 %8, i32* %3, align 4
  %9 = load i64, i64* @spk_attr, align 8
  %10 = load i64, i64* @spk_old_attr, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load i32, i32* @spk_attrib_bleep, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @spk_y, align 4
  %18 = call i32 @bleep(i32 %17)
  br label %19

19:                                               ; preds = %16, %12
  %20 = load i32, i32* @spk_attrib_bleep, align 4
  %21 = and i32 %20, 2
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %25 = call i32 @say_attributes(%struct.vc_data* %24)
  br label %26

26:                                               ; preds = %23, %19
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @speak_char(i32 %28)
  ret void
}

declare dso_local i32 @get_char(%struct.vc_data*, i32*, i64*) #1

declare dso_local i32 @bleep(i32) #1

declare dso_local i32 @say_attributes(%struct.vc_data*) #1

declare dso_local i32 @speak_char(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
