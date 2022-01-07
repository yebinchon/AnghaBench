; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_ehv_bytechan.c_ehv_bc_console_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_ehv_bytechan.c_ehv_bc_console_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.console = type { i32 }

@EV_BYTE_CHANNEL_MAX_BYTES = common dso_local global i32 0, align 4
@stdout_bc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.console*, i8*, i32)* @ehv_bc_console_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehv_bc_console_write(%struct.console* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.console*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.console* %0, %struct.console** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @EV_BYTE_CHANNEL_MAX_BYTES, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %51, %3
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %54

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %5, align 8
  %24 = load i8, i8* %22, align 1
  store i8 %24, i8* %11, align 1
  %25 = load i8, i8* %11, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i32, i32* %10, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %10, align 4
  %31 = zext i32 %29 to i64
  %32 = getelementptr inbounds i8, i8* %16, i64 %31
  store i8 13, i8* %32, align 1
  br label %33

33:                                               ; preds = %28, %21
  %34 = load i8, i8* %11, align 1
  %35 = load i32, i32* %10, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %10, align 4
  %37 = zext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %16, i64 %37
  store i8 %34, i8* %38, align 1
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @EV_BYTE_CHANNEL_MAX_BYTES, align 4
  %41 = sub nsw i32 %40, 1
  %42 = icmp uge i32 %39, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load i32, i32* @stdout_bc, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @ehv_bc_console_byte_channel_send(i32 %44, i8* %16, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %12, align 4
  br label %62

49:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %49, %33
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %17

54:                                               ; preds = %17
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* @stdout_bc, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @ehv_bc_console_byte_channel_send(i32 %58, i8* %16, i32 %59)
  br label %61

61:                                               ; preds = %57, %54
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %61, %48
  %63 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %12, align 4
  switch i32 %64, label %66 [
    i32 0, label %65
    i32 1, label %65
  ]

65:                                               ; preds = %62, %62
  ret void

66:                                               ; preds = %62
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ehv_bc_console_byte_channel_send(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
