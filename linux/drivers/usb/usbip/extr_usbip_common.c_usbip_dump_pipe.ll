; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_common.c_usbip_dump_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_common.c_usbip_dump_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"dev(%d) ep(%d) [%s] \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ISO\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"INT\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"CTRL\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"BULK\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"ERR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @usbip_dump_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbip_dump_pipe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call zeroext i8 @usb_pipetype(i32 %7)
  store i8 %8, i8* %3, align 1
  %9 = load i32, i32* %2, align 4
  %10 = call zeroext i8 @usb_pipeendpoint(i32 %9)
  store i8 %10, i8* %4, align 1
  %11 = load i32, i32* %2, align 4
  %12 = call zeroext i8 @usb_pipedevice(i32 %11)
  store i8 %12, i8* %5, align 1
  %13 = load i32, i32* %2, align 4
  %14 = call zeroext i8 @usb_pipein(i32 %13)
  store i8 %14, i8* %6, align 1
  %15 = load i8, i8* %5, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* %4, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %24 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18, i8* %23)
  %25 = load i8, i8* %3, align 1
  %26 = zext i8 %25 to i32
  switch i32 %26, label %35 [
    i32 128, label %27
    i32 129, label %29
    i32 130, label %31
    i32 131, label %33
  ]

27:                                               ; preds = %1
  %28 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %37

29:                                               ; preds = %1
  %30 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %37

31:                                               ; preds = %1
  %32 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %37

33:                                               ; preds = %1
  %34 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %37

35:                                               ; preds = %1
  %36 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %33, %31, %29, %27
  ret void
}

declare dso_local zeroext i8 @usb_pipetype(i32) #1

declare dso_local zeroext i8 @usb_pipeendpoint(i32) #1

declare dso_local zeroext i8 @usb_pipedevice(i32) #1

declare dso_local zeroext i8 @usb_pipein(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
