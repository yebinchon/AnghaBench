; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_next_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadgetfs_event = type { i32 }
%struct.dev_data = type { i32, i32, %struct.usb_gadgetfs_event*, i32 }

@STATE_DEV_SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"discard old event[%d] %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"event[%d] = %d\0A\00", align 1
@N_EVENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_gadgetfs_event* (%struct.dev_data*, i32)* @next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_gadgetfs_event* @next_event(%struct.dev_data* %0, i32 %1) #0 {
  %3 = alloca %struct.dev_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_gadgetfs_event*, align 8
  %6 = alloca i32, align 4
  store %struct.dev_data* %0, %struct.dev_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %82 [
    i32 130, label %8
    i32 131, label %18
    i32 129, label %21
    i32 128, label %21
  ]

8:                                                ; preds = %2
  %9 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %10 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @STATE_DEV_SETUP, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %16 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  br label %17

17:                                               ; preds = %14, %8
  br label %18

18:                                               ; preds = %2, %17
  %19 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %20 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  br label %84

21:                                               ; preds = %2, %2
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %78, %21
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %25 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %81

28:                                               ; preds = %22
  %29 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %30 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %29, i32 0, i32 2
  %31 = load %struct.usb_gadgetfs_event*, %struct.usb_gadgetfs_event** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.usb_gadgetfs_event, %struct.usb_gadgetfs_event* %31, i64 %33
  %35 = getelementptr inbounds %struct.usb_gadgetfs_event, %struct.usb_gadgetfs_event* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %78

40:                                               ; preds = %28
  %41 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @DBG(%struct.dev_data* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %46 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add i32 %47, -1
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %51 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %81

55:                                               ; preds = %40
  %56 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %57 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %56, i32 0, i32 2
  %58 = load %struct.usb_gadgetfs_event*, %struct.usb_gadgetfs_event** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.usb_gadgetfs_event, %struct.usb_gadgetfs_event* %58, i64 %60
  %62 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %63 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %62, i32 0, i32 2
  %64 = load %struct.usb_gadgetfs_event*, %struct.usb_gadgetfs_event** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = add i32 %65, 1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.usb_gadgetfs_event, %struct.usb_gadgetfs_event* %64, i64 %67
  %69 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %70 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sub i32 %71, %72
  %74 = zext i32 %73 to i64
  %75 = mul i64 4, %74
  %76 = trunc i64 %75 to i32
  %77 = call i32 @memmove(%struct.usb_gadgetfs_event* %61, %struct.usb_gadgetfs_event* %68, i32 %76)
  br label %78

78:                                               ; preds = %55, %39
  %79 = load i32, i32* %6, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %22

81:                                               ; preds = %54, %22
  br label %84

82:                                               ; preds = %2
  %83 = call i32 (...) @BUG()
  br label %84

84:                                               ; preds = %82, %81, %18
  %85 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %86 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %87 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @VDEBUG(%struct.dev_data* %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %89)
  %91 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %92 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %91, i32 0, i32 2
  %93 = load %struct.usb_gadgetfs_event*, %struct.usb_gadgetfs_event** %92, align 8
  %94 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %95 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = zext i32 %96 to i64
  %99 = getelementptr inbounds %struct.usb_gadgetfs_event, %struct.usb_gadgetfs_event* %93, i64 %98
  store %struct.usb_gadgetfs_event* %99, %struct.usb_gadgetfs_event** %5, align 8
  %100 = load %struct.dev_data*, %struct.dev_data** %3, align 8
  %101 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = zext i32 %102 to i64
  %104 = load i64, i64* @N_EVENT, align 8
  %105 = icmp sgt i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @BUG_ON(i32 %106)
  %108 = load %struct.usb_gadgetfs_event*, %struct.usb_gadgetfs_event** %5, align 8
  %109 = call i32 @memset(%struct.usb_gadgetfs_event* %108, i32 0, i32 4)
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.usb_gadgetfs_event*, %struct.usb_gadgetfs_event** %5, align 8
  %112 = getelementptr inbounds %struct.usb_gadgetfs_event, %struct.usb_gadgetfs_event* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = load %struct.usb_gadgetfs_event*, %struct.usb_gadgetfs_event** %5, align 8
  ret %struct.usb_gadgetfs_event* %113
}

declare dso_local i32 @DBG(%struct.dev_data*, i8*, i32, i32) #1

declare dso_local i32 @memmove(%struct.usb_gadgetfs_event*, %struct.usb_gadgetfs_event*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @VDEBUG(%struct.dev_data*, i8*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.usb_gadgetfs_event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
