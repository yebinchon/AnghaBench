; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ssu100.c_ssu100_process_read_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ssu100.c_ssu100_process_read_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i64, %struct.usb_serial_port* }
%struct.usb_serial_port = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 }

@TTY_NORMAL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @ssu100_process_read_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssu100_process_read_urb(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %9 = load %struct.urb*, %struct.urb** %2, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 2
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %10, align 8
  store %struct.usb_serial_port* %11, %struct.usb_serial_port** %3, align 8
  %12 = load %struct.urb*, %struct.urb** %2, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %4, align 8
  %16 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %16, i8* %5, align 1
  %17 = load %struct.urb*, %struct.urb** %2, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sge i32 %20, 4
  br i1 %21, label %22, label %75

22:                                               ; preds = %1
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 27
  br i1 %27, label %28, label %75

28:                                               ; preds = %22
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 27
  br i1 %33, label %34, label %75

34:                                               ; preds = %28
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %75

46:                                               ; preds = %40, %34
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 3
  %56 = load i8, i8* %55, align 1
  %57 = call i32 @ssu100_update_lsr(%struct.usb_serial_port* %53, i8 signext %56, i8* %5)
  br label %58

58:                                               ; preds = %52, %46
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 3
  %68 = load i8, i8* %67, align 1
  %69 = call i32 @ssu100_update_msr(%struct.usb_serial_port* %65, i8 signext %68)
  br label %70

70:                                               ; preds = %64, %58
  %71 = load i32, i32* %6, align 4
  %72 = sub nsw i32 %71, 4
  store i32 %72, i32* %6, align 4
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 4
  store i8* %74, i8** %8, align 8
  br label %77

75:                                               ; preds = %40, %28, %22, %1
  %76 = load i8*, i8** %4, align 8
  store i8* %76, i8** %8, align 8
  br label %77

77:                                               ; preds = %75, %70
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  br label %128

81:                                               ; preds = %77
  %82 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %83 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %117

87:                                               ; preds = %81
  %88 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %89 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %87
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %111, %92
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %93
  %98 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load i8, i8* %99, align 1
  %101 = call i32 @usb_serial_handle_sysrq_char(%struct.usb_serial_port* %98, i8 signext %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %97
  %104 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %105 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %104, i32 0, i32 0
  %106 = load i8*, i8** %8, align 8
  %107 = load i8, i8* %106, align 1
  %108 = load i8, i8* %5, align 1
  %109 = call i32 @tty_insert_flip_char(%struct.TYPE_4__* %105, i8 signext %107, i8 signext %108)
  br label %110

110:                                              ; preds = %103, %97
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %8, align 8
  br label %93

116:                                              ; preds = %93
  br label %124

117:                                              ; preds = %87, %81
  %118 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %119 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %118, i32 0, i32 0
  %120 = load i8*, i8** %8, align 8
  %121 = load i8, i8* %5, align 1
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @tty_insert_flip_string_fixed_flag(%struct.TYPE_4__* %119, i8* %120, i8 signext %121, i32 %122)
  br label %124

124:                                              ; preds = %117, %116
  %125 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %126 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %125, i32 0, i32 0
  %127 = call i32 @tty_flip_buffer_push(%struct.TYPE_4__* %126)
  br label %128

128:                                              ; preds = %124, %80
  ret void
}

declare dso_local i32 @ssu100_update_lsr(%struct.usb_serial_port*, i8 signext, i8*) #1

declare dso_local i32 @ssu100_update_msr(%struct.usb_serial_port*, i8 signext) #1

declare dso_local i32 @usb_serial_handle_sysrq_char(%struct.usb_serial_port*, i8 signext) #1

declare dso_local i32 @tty_insert_flip_char(%struct.TYPE_4__*, i8 signext, i8 signext) #1

declare dso_local i32 @tty_insert_flip_string_fixed_flag(%struct.TYPE_4__*, i8*, i8 signext, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
