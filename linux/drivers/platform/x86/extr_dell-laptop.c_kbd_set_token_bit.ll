; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_set_token_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_set_token_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.calling_interface_buffer = type { i32 }
%struct.calling_interface_token = type { i32, i32 }

@kbd_tokens = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@CLASS_TOKEN_WRITE = common dso_local global i32 0, align 4
@SELECT_TOKEN_STD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @kbd_set_token_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbd_set_token_bit(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.calling_interface_buffer, align 4
  %5 = alloca %struct.calling_interface_token*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i32*, i32** @kbd_tokens, align 8
  %9 = call i64 @ARRAY_SIZE(i32* %8)
  %10 = icmp uge i64 %7, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %37

14:                                               ; preds = %1
  %15 = load i32*, i32** @kbd_tokens, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.calling_interface_token* @dell_smbios_find_token(i32 %18)
  store %struct.calling_interface_token* %19, %struct.calling_interface_token** %5, align 8
  %20 = load %struct.calling_interface_token*, %struct.calling_interface_token** %5, align 8
  %21 = icmp ne %struct.calling_interface_token* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %37

25:                                               ; preds = %14
  %26 = load %struct.calling_interface_token*, %struct.calling_interface_token** %5, align 8
  %27 = getelementptr inbounds %struct.calling_interface_token, %struct.calling_interface_token* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.calling_interface_token*, %struct.calling_interface_token** %5, align 8
  %30 = getelementptr inbounds %struct.calling_interface_token, %struct.calling_interface_token* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dell_fill_request(%struct.calling_interface_buffer* %4, i32 %28, i32 %31, i32 0, i32 0)
  %33 = load i32, i32* @CLASS_TOKEN_WRITE, align 4
  %34 = load i32, i32* @SELECT_TOKEN_STD, align 4
  %35 = call i32 @dell_send_request(%struct.calling_interface_buffer* %4, i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %25, %22, %11
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.calling_interface_token* @dell_smbios_find_token(i32) #1

declare dso_local i32 @dell_fill_request(%struct.calling_interface_buffer*, i32, i32, i32, i32) #1

declare dso_local i32 @dell_send_request(%struct.calling_interface_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
