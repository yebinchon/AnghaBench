; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_get_token_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_get_token_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.calling_interface_buffer = type { i32* }
%struct.calling_interface_token = type { i32, i32 }

@kbd_tokens = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@CLASS_TOKEN_READ = common dso_local global i32 0, align 4
@SELECT_TOKEN_STD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @kbd_get_token_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbd_get_token_bit(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.calling_interface_buffer, align 8
  %5 = alloca %struct.calling_interface_token*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i32*, i32** @kbd_tokens, align 8
  %10 = call i64 @ARRAY_SIZE(i32* %9)
  %11 = icmp uge i64 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %49

15:                                               ; preds = %1
  %16 = load i32*, i32** @kbd_tokens, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.calling_interface_token* @dell_smbios_find_token(i32 %19)
  store %struct.calling_interface_token* %20, %struct.calling_interface_token** %5, align 8
  %21 = load %struct.calling_interface_token*, %struct.calling_interface_token** %5, align 8
  %22 = icmp ne %struct.calling_interface_token* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %49

26:                                               ; preds = %15
  %27 = load %struct.calling_interface_token*, %struct.calling_interface_token** %5, align 8
  %28 = getelementptr inbounds %struct.calling_interface_token, %struct.calling_interface_token* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dell_fill_request(%struct.calling_interface_buffer* %4, i32 %29, i32 0, i32 0, i32 0)
  %31 = load i32, i32* @CLASS_TOKEN_READ, align 4
  %32 = load i32, i32* @SELECT_TOKEN_STD, align 4
  %33 = call i32 @dell_send_request(%struct.calling_interface_buffer* %4, i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %4, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %49

42:                                               ; preds = %26
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.calling_interface_token*, %struct.calling_interface_token** %5, align 8
  %45 = getelementptr inbounds %struct.calling_interface_token, %struct.calling_interface_token* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %43, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %42, %40, %23, %12
  %50 = load i32, i32* %2, align 4
  ret i32 %50
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
