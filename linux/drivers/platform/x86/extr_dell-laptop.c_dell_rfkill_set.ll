; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_dell_rfkill_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_dell_rfkill_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.calling_interface_buffer = type { i32* }

@CLASS_INFO = common dso_local global i32 0, align 4
@SELECT_RFKILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @dell_rfkill_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dell_rfkill_set(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.calling_interface_buffer, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  store i32 %16, i32* %6, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = ptrtoint i8* %17 to i64
  store i64 %18, i64* %7, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = sub i64 %20, 1
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = call i32 @dell_fill_request(%struct.calling_interface_buffer* %9, i32 0, i32 0, i32 0, i32 0)
  %24 = load i32, i32* @CLASS_INFO, align 4
  %25 = load i32, i32* @SELECT_RFKILL, align 4
  %26 = call i32 @dell_send_request(%struct.calling_interface_buffer* %9, i32 %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %3, align 4
  br label %82

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %9, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = call i32 @dell_fill_request(%struct.calling_interface_buffer* %9, i32 2, i32 0, i32 0, i32 0)
  %37 = load i32, i32* @CLASS_INFO, align 4
  %38 = load i32, i32* @SELECT_RFKILL, align 4
  %39 = call i32 @dell_send_request(%struct.calling_interface_buffer* %9, i32 %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %3, align 4
  br label %82

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.calling_interface_buffer, %struct.calling_interface_buffer* %9, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %44
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @BIT(i32 %53)
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @BIT(i32 0)
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @BIT(i32 16)
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  store i32 1, i32* %6, align 4
  br label %68

68:                                               ; preds = %67, %62, %57, %51, %44
  %69 = load i64, i64* %7, align 8
  %70 = shl i64 %69, 8
  %71 = or i64 1, %70
  %72 = load i32, i32* %6, align 4
  %73 = shl i32 %72, 16
  %74 = sext i32 %73 to i64
  %75 = or i64 %71, %74
  %76 = trunc i64 %75 to i32
  %77 = call i32 @dell_fill_request(%struct.calling_interface_buffer* %9, i32 %76, i32 0, i32 0, i32 0)
  %78 = load i32, i32* @CLASS_INFO, align 4
  %79 = load i32, i32* @SELECT_RFKILL, align 4
  %80 = call i32 @dell_send_request(%struct.calling_interface_buffer* %9, i32 %78, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %68, %42, %29
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @dell_fill_request(%struct.calling_interface_buffer*, i32, i32, i32, i32) #1

declare dso_local i32 @dell_send_request(%struct.calling_interface_buffer*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
