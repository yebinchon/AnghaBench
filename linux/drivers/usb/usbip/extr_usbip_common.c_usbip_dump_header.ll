; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_common.c_usbip_dump_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_common.c_usbip_dump_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_header = type { %struct.TYPE_12__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"BASE: cmd %u seq %u devid %u dir %u ep %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"USBIP_CMD_SUBMIT: x_flags %u x_len %u sf %u #p %d iv %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"USBIP_CMD_UNLINK: seq %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"USBIP_RET_SUBMIT: st %d al %u sf %d #p %d ec %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"USBIP_RET_UNLINK: status %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"unknown command\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbip_dump_header(%struct.usbip_header* %0) #0 {
  %2 = alloca %struct.usbip_header*, align 8
  store %struct.usbip_header* %0, %struct.usbip_header** %2, align 8
  %3 = load %struct.usbip_header*, %struct.usbip_header** %2, align 8
  %4 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.usbip_header*, %struct.usbip_header** %2, align 8
  %8 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.usbip_header*, %struct.usbip_header** %2, align 8
  %12 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.usbip_header*, %struct.usbip_header** %2, align 8
  %16 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.usbip_header*, %struct.usbip_header** %2, align 8
  %20 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %10, i32 %14, i32 %18, i32 %22)
  %24 = load %struct.usbip_header*, %struct.usbip_header** %2, align 8
  %25 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %96 [
    i32 131, label %28
    i32 130, label %55
    i32 129, label %62
    i32 128, label %89
  ]

28:                                               ; preds = %1
  %29 = load %struct.usbip_header*, %struct.usbip_header** %2, align 8
  %30 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.usbip_header*, %struct.usbip_header** %2, align 8
  %35 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.usbip_header*, %struct.usbip_header** %2, align 8
  %40 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.usbip_header*, %struct.usbip_header** %2, align 8
  %45 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.usbip_header*, %struct.usbip_header** %2, align 8
  %50 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %38, i32 %43, i32 %48, i32 %53)
  br label %98

55:                                               ; preds = %1
  %56 = load %struct.usbip_header*, %struct.usbip_header** %2, align 8
  %57 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %98

62:                                               ; preds = %1
  %63 = load %struct.usbip_header*, %struct.usbip_header** %2, align 8
  %64 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.usbip_header*, %struct.usbip_header** %2, align 8
  %69 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.usbip_header*, %struct.usbip_header** %2, align 8
  %74 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.usbip_header*, %struct.usbip_header** %2, align 8
  %79 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.usbip_header*, %struct.usbip_header** %2, align 8
  %84 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %72, i32 %77, i32 %82, i32 %87)
  br label %98

89:                                               ; preds = %1
  %90 = load %struct.usbip_header*, %struct.usbip_header** %2, align 8
  %91 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  br label %98

96:                                               ; preds = %1
  %97 = call i32 @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %89, %62, %55, %28
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
