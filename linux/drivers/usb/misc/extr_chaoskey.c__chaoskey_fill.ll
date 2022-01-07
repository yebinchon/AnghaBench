; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_chaoskey.c__chaoskey_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_chaoskey.c__chaoskey_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chaoskey = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fill\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"not empty yet (valid %d used %d)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"device not present\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"wakeup failed (result %d)\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@NAK_TIMEOUT = common dso_local global i32 0, align 4
@ALEA_FIRST_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"read %d bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chaoskey*)* @_chaoskey_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_chaoskey_fill(%struct.chaoskey* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.chaoskey*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.chaoskey* %0, %struct.chaoskey** %3, align 8
  %6 = load i32, i32* @wait, align 4
  %7 = call i32 @DEFINE_WAIT(i32 %6)
  %8 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %9 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i32, i8*, ...) @usb_dbg(i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %13 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %16 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %21 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %24 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %27 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @usb_dbg(i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %28)
  store i32 0, i32* %2, align 4
  br label %122

30:                                               ; preds = %1
  %31 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %32 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %37 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @usb_dbg(i32 %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %122

42:                                               ; preds = %30
  %43 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %44 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @usb_autopm_get_interface(i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %51 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i32, i8*, ...) @usb_dbg(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %122

56:                                               ; preds = %42
  %57 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %58 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %57, i32 0, i32 2
  store i32 1, i32* %58, align 4
  %59 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %60 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i32 @usb_submit_urb(i32 %61, i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @usb_translate_errors(i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %70 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %69, i32 0, i32 2
  store i32 0, i32* %70, align 4
  br label %109

71:                                               ; preds = %56
  %72 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %73 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %5, align 4
  %75 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %76 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %75, i32 0, i32 3
  store i32 1, i32* %76, align 4
  %77 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %78 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %81 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %71
  %89 = load i32, i32* @NAK_TIMEOUT, align 4
  br label %92

90:                                               ; preds = %71
  %91 = load i32, i32* @ALEA_FIRST_TIMEOUT, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = call i32 @wait_event_interruptible_timeout(i32 %79, i32 %85, i32 %93)
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %109

98:                                               ; preds = %92
  %99 = load i32, i32* %4, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* @ETIMEDOUT, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %108

104:                                              ; preds = %98
  %105 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %106 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %104, %101
  br label %109

109:                                              ; preds = %108, %97, %66
  %110 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %111 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @usb_autopm_put_interface(i32 %112)
  %114 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %115 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %118 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i32, i8*, ...) @usb_dbg(i32 %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %4, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %109, %49, %35, %19
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @usb_dbg(i32, i8*, ...) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @usb_translate_errors(i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
