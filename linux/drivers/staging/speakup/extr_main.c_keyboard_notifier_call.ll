; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_keyboard_notifier_call.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_keyboard_notifier_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.keyboard_notifier_param = type { i32, i32, i32, %struct.vc_data* }
%struct.vc_data = type { i64 }

@NOTIFY_OK = common dso_local global i32 0, align 4
@keyboard_notifier_call.keycode = internal global i32 0, align 4
@in_keyboard_notifier = common dso_local global i32 0, align 4
@KD_GRAPHICS = common dso_local global i64 0, align 8
@NOTIFY_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @keyboard_notifier_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyboard_notifier_call(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.keyboard_notifier_param*, align 8
  %8 = alloca %struct.vc_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.keyboard_notifier_param*
  store %struct.keyboard_notifier_param* %14, %struct.keyboard_notifier_param** %7, align 8
  %15 = load %struct.keyboard_notifier_param*, %struct.keyboard_notifier_param** %7, align 8
  %16 = getelementptr inbounds %struct.keyboard_notifier_param, %struct.keyboard_notifier_param* %15, i32 0, i32 3
  %17 = load %struct.vc_data*, %struct.vc_data** %16, align 8
  store %struct.vc_data* %17, %struct.vc_data** %8, align 8
  %18 = load %struct.keyboard_notifier_param*, %struct.keyboard_notifier_param** %7, align 8
  %19 = getelementptr inbounds %struct.keyboard_notifier_param, %struct.keyboard_notifier_param* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %24, i32* %10, align 4
  store i32 1, i32* @in_keyboard_notifier, align 4
  %25 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %26 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @KD_GRAPHICS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %108

31:                                               ; preds = %3
  %32 = call i64 (...) @speakup_fake_key_pressed()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %108

35:                                               ; preds = %31
  %36 = load i64, i64* %5, align 8
  switch i64 %36, label %107 [
    i64 137, label %37
    i64 134, label %41
    i64 133, label %42
    i64 136, label %43
    i64 135, label %73
  ]

37:                                               ; preds = %35
  %38 = load %struct.keyboard_notifier_param*, %struct.keyboard_notifier_param** %7, align 8
  %39 = getelementptr inbounds %struct.keyboard_notifier_param, %struct.keyboard_notifier_param* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* @keyboard_notifier_call.keycode, align 4
  br label %107

41:                                               ; preds = %35
  br label %107

42:                                               ; preds = %35
  br label %107

43:                                               ; preds = %35
  %44 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %45 = load %struct.keyboard_notifier_param*, %struct.keyboard_notifier_param** %7, align 8
  %46 = getelementptr inbounds %struct.keyboard_notifier_param, %struct.keyboard_notifier_param* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @keyboard_notifier_call.keycode, align 4
  %49 = load %struct.keyboard_notifier_param*, %struct.keyboard_notifier_param** %7, align 8
  %50 = getelementptr inbounds %struct.keyboard_notifier_param, %struct.keyboard_notifier_param* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @speakup_key(%struct.vc_data* %44, i32 %47, i32 %48, i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %56, i32* %10, align 4
  br label %72

57:                                               ; preds = %43
  %58 = load %struct.keyboard_notifier_param*, %struct.keyboard_notifier_param** %7, align 8
  %59 = getelementptr inbounds %struct.keyboard_notifier_param, %struct.keyboard_notifier_param* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @KTYP(i32 %60)
  %62 = icmp eq i32 %61, 132
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %65 = load %struct.keyboard_notifier_param*, %struct.keyboard_notifier_param** %7, align 8
  %66 = getelementptr inbounds %struct.keyboard_notifier_param, %struct.keyboard_notifier_param* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call zeroext i8 @KVAL(i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @pre_handle_cursor(%struct.vc_data* %64, i8 zeroext %68, i32 %69)
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %63, %57
  br label %72

72:                                               ; preds = %71, %55
  br label %107

73:                                               ; preds = %35
  %74 = load %struct.keyboard_notifier_param*, %struct.keyboard_notifier_param** %7, align 8
  %75 = getelementptr inbounds %struct.keyboard_notifier_param, %struct.keyboard_notifier_param* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @KTYP(i32 %76)
  %78 = sub nsw i32 %77, 240
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %11, align 1
  %80 = load %struct.keyboard_notifier_param*, %struct.keyboard_notifier_param** %7, align 8
  %81 = getelementptr inbounds %struct.keyboard_notifier_param, %struct.keyboard_notifier_param* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call zeroext i8 @KVAL(i32 %82)
  store i8 %83, i8* %12, align 1
  %84 = load i8, i8* %11, align 1
  %85 = zext i8 %84 to i32
  switch i32 %85, label %106 [
    i32 129, label %86
    i32 131, label %91
    i32 130, label %91
    i32 132, label %96
    i32 128, label %101
  ]

86:                                               ; preds = %73
  %87 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %88 = load i8, i8* %12, align 1
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @do_handle_shift(%struct.vc_data* %87, i8 zeroext %88, i32 %89)
  br label %106

91:                                               ; preds = %73, %73
  %92 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %93 = load i8, i8* %12, align 1
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @do_handle_latin(%struct.vc_data* %92, i8 zeroext %93, i32 %94)
  br label %106

96:                                               ; preds = %73
  %97 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %98 = load i8, i8* %12, align 1
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @do_handle_cursor(%struct.vc_data* %97, i8 zeroext %98, i32 %99)
  br label %106

101:                                              ; preds = %73
  %102 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %103 = load i8, i8* %12, align 1
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @do_handle_spec(%struct.vc_data* %102, i8 zeroext %103, i32 %104)
  br label %106

106:                                              ; preds = %73, %101, %96, %91, %86
  br label %107

107:                                              ; preds = %35, %106, %72, %42, %41, %37
  br label %108

108:                                              ; preds = %107, %34, %30
  store i32 0, i32* @in_keyboard_notifier, align 4
  %109 = load i32, i32* %10, align 4
  ret i32 %109
}

declare dso_local i64 @speakup_fake_key_pressed(...) #1

declare dso_local i32 @speakup_key(%struct.vc_data*, i32, i32, i32, i32) #1

declare dso_local i32 @KTYP(i32) #1

declare dso_local i32 @pre_handle_cursor(%struct.vc_data*, i8 zeroext, i32) #1

declare dso_local zeroext i8 @KVAL(i32) #1

declare dso_local i32 @do_handle_shift(%struct.vc_data*, i8 zeroext, i32) #1

declare dso_local i32 @do_handle_latin(%struct.vc_data*, i8 zeroext, i32) #1

declare dso_local i32 @do_handle_cursor(%struct.vc_data*, i8 zeroext, i32) #1

declare dso_local i32 @do_handle_spec(%struct.vc_data*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
