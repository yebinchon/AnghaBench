; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_keyspan_pda.c_keyspan_pda_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_keyspan_pda.c_keyspan_pda_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.usb_serial_port = type { i32, i32, i32, %struct.TYPE_2__*, i32, %struct.usb_serial* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.usb_serial = type { i32 }
%struct.keyspan_pda_private = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"write request of 0 bytes\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"roomquery says %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"roomquery failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"roomquery returned 0 bytes\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"usb_submit_urb(write bulk) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.usb_serial_port*, i8*, i32)* @keyspan_pda_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyspan_pda_write(%struct.tty_struct* %0, %struct.usb_serial_port* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.usb_serial_port*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_serial*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.keyspan_pda_private*, align 8
  %14 = alloca i32*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %16 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %15, i32 0, i32 5
  %17 = load %struct.usb_serial*, %struct.usb_serial** %16, align 8
  store %struct.usb_serial* %17, %struct.usb_serial** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %19 = call %struct.keyspan_pda_private* @usb_get_serial_port_data(%struct.usb_serial_port* %18)
  store %struct.keyspan_pda_private* %19, %struct.keyspan_pda_private** %13, align 8
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %24 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %23, i32 0, i32 2
  %25 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %190

26:                                               ; preds = %4
  %27 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %28 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %27, i32 0, i32 4
  %29 = call i32 @spin_lock_bh(i32* %28)
  %30 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %31 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %30, i32 0, i32 1
  %32 = call i32 @test_bit(i32 0, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.keyspan_pda_private*, %struct.keyspan_pda_private** %13, align 8
  %36 = getelementptr inbounds %struct.keyspan_pda_private, %struct.keyspan_pda_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34, %26
  %40 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %41 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %40, i32 0, i32 4
  %42 = call i32 @spin_unlock_bh(i32* %41)
  store i32 0, i32* %5, align 4
  br label %190

43:                                               ; preds = %34
  %44 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %45 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %44, i32 0, i32 1
  %46 = call i32 @clear_bit(i32 0, i32* %45)
  %47 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %48 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %47, i32 0, i32 4
  %49 = call i32 @spin_unlock_bh(i32* %48)
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %52 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %57 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  br label %61

59:                                               ; preds = %43
  %60 = load i32, i32* %9, align 4
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi i32 [ %58, %55 ], [ %60, %59 ]
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.keyspan_pda_private*, %struct.keyspan_pda_private** %13, align 8
  %65 = getelementptr inbounds %struct.keyspan_pda_private, %struct.keyspan_pda_private* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %63, %66
  br i1 %67, label %68, label %125

68:                                               ; preds = %61
  %69 = call i32 (...) @in_interrupt()
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %125, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i32* @kmalloc(i32 1, i32 %72)
  store i32* %73, i32** %14, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %12, align 4
  br label %181

79:                                               ; preds = %71
  %80 = load %struct.usb_serial*, %struct.usb_serial** %10, align 8
  %81 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.usb_serial*, %struct.usb_serial** %10, align 8
  %84 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @usb_rcvctrlpipe(i32 %85, i32 0)
  %87 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %88 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @USB_DIR_IN, align 4
  %91 = or i32 %89, %90
  %92 = load i32*, i32** %14, align 8
  %93 = call i32 @usb_control_msg(i32 %82, i32 %86, i32 6, i32 %91, i32 0, i32 0, i32* %92, i32 1, i32 2000)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %79
  %97 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %98 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %97, i32 0, i32 2
  %99 = load i32*, i32** %14, align 8
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %98, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load i32*, i32** %14, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.keyspan_pda_private*, %struct.keyspan_pda_private** %13, align 8
  %105 = getelementptr inbounds %struct.keyspan_pda_private, %struct.keyspan_pda_private* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %96, %79
  %107 = load i32*, i32** %14, align 8
  %108 = call i32 @kfree(i32* %107)
  %109 = load i32, i32* %12, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %113 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %112, i32 0, i32 2
  %114 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %181

115:                                              ; preds = %106
  %116 = load i32, i32* %12, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %120 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %119, i32 0, i32 2
  %121 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %120, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %122 = load i32, i32* @EIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %12, align 4
  br label %181

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124, %68, %61
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.keyspan_pda_private*, %struct.keyspan_pda_private** %13, align 8
  %128 = getelementptr inbounds %struct.keyspan_pda_private, %struct.keyspan_pda_private* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp sgt i32 %126, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load %struct.keyspan_pda_private*, %struct.keyspan_pda_private** %13, align 8
  %133 = getelementptr inbounds %struct.keyspan_pda_private, %struct.keyspan_pda_private* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %9, align 4
  store i32 1, i32* %11, align 4
  br label %135

135:                                              ; preds = %131, %125
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %169

138:                                              ; preds = %135
  %139 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %140 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %139, i32 0, i32 3
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i8*, i8** %8, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @memcpy(i32 %143, i8* %144, i32 %145)
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %149 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %148, i32 0, i32 3
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  store i32 %147, i32* %151, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.keyspan_pda_private*, %struct.keyspan_pda_private** %13, align 8
  %154 = getelementptr inbounds %struct.keyspan_pda_private, %struct.keyspan_pda_private* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %155, %152
  store i32 %156, i32* %154, align 4
  %157 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %158 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %157, i32 0, i32 3
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = load i32, i32* @GFP_ATOMIC, align 4
  %161 = call i32 @usb_submit_urb(%struct.TYPE_2__* %159, i32 %160)
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %138
  %165 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %166 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %165, i32 0, i32 2
  %167 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %166, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %181

168:                                              ; preds = %138
  br label %170

169:                                              ; preds = %135
  store i32 1, i32* %11, align 4
  br label %170

170:                                              ; preds = %169, %168
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %170
  %174 = load %struct.keyspan_pda_private*, %struct.keyspan_pda_private** %13, align 8
  %175 = getelementptr inbounds %struct.keyspan_pda_private, %struct.keyspan_pda_private* %174, i32 0, i32 0
  store i32 1, i32* %175, align 4
  %176 = load %struct.keyspan_pda_private*, %struct.keyspan_pda_private** %13, align 8
  %177 = getelementptr inbounds %struct.keyspan_pda_private, %struct.keyspan_pda_private* %176, i32 0, i32 2
  %178 = call i32 @schedule_work(i32* %177)
  br label %179

179:                                              ; preds = %173, %170
  %180 = load i32, i32* %9, align 4
  store i32 %180, i32* %12, align 4
  br label %181

181:                                              ; preds = %179, %164, %118, %111, %76
  %182 = load i32, i32* %12, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %186 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %185, i32 0, i32 1
  %187 = call i32 @set_bit(i32 0, i32* %186)
  br label %188

188:                                              ; preds = %184, %181
  %189 = load i32, i32* %12, align 4
  store i32 %189, i32* %5, align 4
  br label %190

190:                                              ; preds = %188, %39, %22
  %191 = load i32, i32* %5, align 4
  ret i32 %191
}

declare dso_local %struct.keyspan_pda_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
