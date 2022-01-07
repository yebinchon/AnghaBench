; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_console.c_usb_console_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_console.c_usb_console_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbcons_info = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { %struct.TYPE_10__, i32, %struct.usb_serial* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.usb_serial = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32*, %struct.usb_serial_port*)*, i32 (%struct.tty_struct*, %struct.usb_serial_port*, %struct.ktermios*)* }
%struct.tty_struct = type { %struct.TYPE_9__, i32*, %struct.TYPE_8__*, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ktermios = type { i32 }
%struct.console = type { i32 }

@usbcons_info = common dso_local global %struct.usbcons_info zeroinitializer, align 8
@CREAD = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@CS7 = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"No USB device connected to ttyUSB%i\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@usb_serial_tty_driver = common dso_local global %struct.TYPE_8__* null, align 8
@usb_console_fake_tty_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"could not open USB console port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.console*, i8*)* @usb_console_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_console_setup(%struct.console* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.console*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.usbcons_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.usb_serial*, align 8
  %14 = alloca %struct.usb_serial_port*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.tty_struct*, align 8
  %17 = alloca %struct.ktermios, align 4
  store %struct.console* %0, %struct.console** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.usbcons_info* @usbcons_info, %struct.usbcons_info** %6, align 8
  store i32 9600, i32* %7, align 4
  store i32 8, i32* %8, align 4
  store i32 110, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* @CREAD, align 4
  %19 = load i32, i32* @HUPCL, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @CLOCAL, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %11, align 4
  store %struct.tty_struct* null, %struct.tty_struct** %16, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %75

25:                                               ; preds = %2
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @simple_strtoul(i8* %26, i32* null, i32 10)
  store i32 %27, i32* %7, align 4
  %28 = load i8*, i8** %5, align 8
  store i8* %28, i8** %12, align 8
  br label %29

29:                                               ; preds = %41, %25
  %30 = load i8*, i8** %12, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sge i32 %32, 48
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %12, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sle i32 %37, 57
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ false, %29 ], [ %38, %34 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i8*, i8** %12, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %12, align 8
  br label %29

44:                                               ; preds = %39
  %45 = load i8*, i8** %12, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %12, align 8
  %51 = load i8, i8* %49, align 1
  %52 = sext i8 %51 to i32
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %48, %44
  %54 = load i8*, i8** %12, align 8
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %12, align 8
  %60 = load i8, i8* %58, align 1
  %61 = sext i8 %60 to i32
  %62 = sub nsw i32 %61, 48
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %57, %53
  %64 = load i8*, i8** %12, align 8
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i8*, i8** %12, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %12, align 8
  %70 = load i8, i8* %68, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 114
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %67, %63
  br label %75

75:                                               ; preds = %74, %2
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 9600, i32* %7, align 4
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i32, i32* %8, align 4
  switch i32 %80, label %85 [
    i32 7, label %81
    i32 8, label %86
  ]

81:                                               ; preds = %79
  %82 = load i32, i32* @CS7, align 4
  %83 = load i32, i32* %11, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %11, align 4
  br label %90

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %79, %85
  %87 = load i32, i32* @CS8, align 4
  %88 = load i32, i32* %11, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %86, %81
  %91 = load i32, i32* %9, align 4
  switch i32 %91, label %100 [
    i32 111, label %92
    i32 79, label %92
    i32 101, label %96
    i32 69, label %96
  ]

92:                                               ; preds = %90, %90
  %93 = load i32, i32* @PARODD, align 4
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %11, align 4
  br label %100

96:                                               ; preds = %90, %90
  %97 = load i32, i32* @PARENB, align 4
  %98 = load i32, i32* %11, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %90, %96, %92
  %101 = load %struct.console*, %struct.console** %4, align 8
  %102 = getelementptr inbounds %struct.console, %struct.console* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call %struct.usb_serial_port* @usb_serial_port_get_by_minor(i32 %103)
  store %struct.usb_serial_port* %104, %struct.usb_serial_port** %14, align 8
  %105 = load %struct.usb_serial_port*, %struct.usb_serial_port** %14, align 8
  %106 = icmp eq %struct.usb_serial_port* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  %108 = load %struct.console*, %struct.console** %4, align 8
  %109 = getelementptr inbounds %struct.console, %struct.console* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @ENODEV, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %283

114:                                              ; preds = %100
  %115 = load %struct.usb_serial_port*, %struct.usb_serial_port** %14, align 8
  %116 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %115, i32 0, i32 2
  %117 = load %struct.usb_serial*, %struct.usb_serial** %116, align 8
  store %struct.usb_serial* %117, %struct.usb_serial** %13, align 8
  %118 = load %struct.usb_serial*, %struct.usb_serial** %13, align 8
  %119 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @usb_autopm_get_interface(i32 %120)
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %114
  br label %276

125:                                              ; preds = %114
  %126 = load %struct.usb_serial_port*, %struct.usb_serial_port** %14, align 8
  %127 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %126, i32 0, i32 0
  %128 = call i32 @tty_port_tty_set(%struct.TYPE_10__* %127, %struct.tty_struct* null)
  %129 = load %struct.usb_serial_port*, %struct.usb_serial_port** %14, align 8
  %130 = load %struct.usbcons_info*, %struct.usbcons_info** %6, align 8
  %131 = getelementptr inbounds %struct.usbcons_info, %struct.usbcons_info* %130, i32 0, i32 0
  store %struct.usb_serial_port* %129, %struct.usb_serial_port** %131, align 8
  %132 = load %struct.usb_serial_port*, %struct.usb_serial_port** %14, align 8
  %133 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %134, align 8
  %137 = load %struct.usb_serial_port*, %struct.usb_serial_port** %14, align 8
  %138 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %137, i32 0, i32 0
  %139 = call i32 @tty_port_initialized(%struct.TYPE_10__* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %247, label %141

141:                                              ; preds = %125
  %142 = load %struct.usb_serial*, %struct.usb_serial** %13, align 8
  %143 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %142, i32 0, i32 2
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  %146 = load i32 (%struct.tty_struct*, %struct.usb_serial_port*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.usb_serial_port*, %struct.ktermios*)** %145, align 8
  %147 = icmp ne i32 (%struct.tty_struct*, %struct.usb_serial_port*, %struct.ktermios*)* %146, null
  br i1 %147, label %148, label %196

148:                                              ; preds = %141
  %149 = load i32, i32* @GFP_KERNEL, align 4
  %150 = call %struct.tty_struct* @kzalloc(i32 48, i32 %149)
  store %struct.tty_struct* %150, %struct.tty_struct** %16, align 8
  %151 = load %struct.tty_struct*, %struct.tty_struct** %16, align 8
  %152 = icmp ne %struct.tty_struct* %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %15, align 4
  br label %266

156:                                              ; preds = %148
  %157 = load %struct.tty_struct*, %struct.tty_struct** %16, align 8
  %158 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %157, i32 0, i32 7
  %159 = call i32 @kref_init(i32* %158)
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** @usb_serial_tty_driver, align 8
  %161 = load %struct.tty_struct*, %struct.tty_struct** %16, align 8
  %162 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %161, i32 0, i32 2
  store %struct.TYPE_8__* %160, %struct.TYPE_8__** %162, align 8
  %163 = load %struct.console*, %struct.console** %4, align 8
  %164 = getelementptr inbounds %struct.console, %struct.console* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.tty_struct*, %struct.tty_struct** %16, align 8
  %167 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %166, i32 0, i32 6
  store i32 %165, i32* %167, align 4
  %168 = load %struct.tty_struct*, %struct.tty_struct** %16, align 8
  %169 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %168, i32 0, i32 5
  %170 = call i32 @init_ldsem(i32* %169)
  %171 = load %struct.tty_struct*, %struct.tty_struct** %16, align 8
  %172 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %171, i32 0, i32 4
  %173 = call i32 @spin_lock_init(i32* %172)
  %174 = load %struct.tty_struct*, %struct.tty_struct** %16, align 8
  %175 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %174, i32 0, i32 3
  %176 = call i32 @INIT_LIST_HEAD(i32* %175)
  %177 = load %struct.tty_struct*, %struct.tty_struct** %16, align 8
  %178 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %177, i32 0, i32 2
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  %181 = call i32 @kref_get(i32* %180)
  %182 = load %struct.tty_struct*, %struct.tty_struct** %16, align 8
  %183 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %182, i32 0, i32 2
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @__module_get(i32 %186)
  %188 = load %struct.tty_struct*, %struct.tty_struct** %16, align 8
  %189 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %188, i32 0, i32 1
  store i32* @usb_console_fake_tty_ops, i32** %189, align 8
  %190 = load %struct.tty_struct*, %struct.tty_struct** %16, align 8
  %191 = call i32 @tty_init_termios(%struct.tty_struct* %190)
  %192 = load %struct.usb_serial_port*, %struct.usb_serial_port** %14, align 8
  %193 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %192, i32 0, i32 0
  %194 = load %struct.tty_struct*, %struct.tty_struct** %16, align 8
  %195 = call i32 @tty_port_tty_set(%struct.TYPE_10__* %193, %struct.tty_struct* %194)
  br label %196

196:                                              ; preds = %156, %141
  %197 = load %struct.usb_serial*, %struct.usb_serial** %13, align 8
  %198 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %197, i32 0, i32 2
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = load i32 (i32*, %struct.usb_serial_port*)*, i32 (i32*, %struct.usb_serial_port*)** %200, align 8
  %202 = load %struct.usb_serial_port*, %struct.usb_serial_port** %14, align 8
  %203 = call i32 %201(i32* null, %struct.usb_serial_port* %202)
  store i32 %203, i32* %15, align 4
  %204 = load i32, i32* %15, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %196
  %207 = load %struct.usb_serial_port*, %struct.usb_serial_port** %14, align 8
  %208 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %207, i32 0, i32 1
  %209 = call i32 @dev_err(i32* %208, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %260

210:                                              ; preds = %196
  %211 = load %struct.usb_serial*, %struct.usb_serial** %13, align 8
  %212 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %211, i32 0, i32 2
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 1
  %215 = load i32 (%struct.tty_struct*, %struct.usb_serial_port*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.usb_serial_port*, %struct.ktermios*)** %214, align 8
  %216 = icmp ne i32 (%struct.tty_struct*, %struct.usb_serial_port*, %struct.ktermios*)* %215, null
  br i1 %216, label %217, label %243

217:                                              ; preds = %210
  %218 = load i32, i32* %11, align 4
  %219 = load %struct.tty_struct*, %struct.tty_struct** %16, align 8
  %220 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  store i32 %218, i32* %221, align 8
  %222 = load %struct.tty_struct*, %struct.tty_struct** %16, align 8
  %223 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %222, i32 0, i32 0
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* %7, align 4
  %226 = call i32 @tty_termios_encode_baud_rate(%struct.TYPE_9__* %223, i32 %224, i32 %225)
  %227 = call i32 @memset(%struct.ktermios* %17, i32 0, i32 4)
  %228 = load %struct.usb_serial*, %struct.usb_serial** %13, align 8
  %229 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %228, i32 0, i32 2
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 1
  %232 = load i32 (%struct.tty_struct*, %struct.usb_serial_port*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.usb_serial_port*, %struct.ktermios*)** %231, align 8
  %233 = load %struct.tty_struct*, %struct.tty_struct** %16, align 8
  %234 = load %struct.usb_serial_port*, %struct.usb_serial_port** %14, align 8
  %235 = call i32 %232(%struct.tty_struct* %233, %struct.usb_serial_port* %234, %struct.ktermios* %17)
  %236 = load %struct.usb_serial_port*, %struct.usb_serial_port** %14, align 8
  %237 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %236, i32 0, i32 0
  %238 = call i32 @tty_port_tty_set(%struct.TYPE_10__* %237, %struct.tty_struct* null)
  %239 = load %struct.tty_struct*, %struct.tty_struct** %16, align 8
  %240 = call i32 @tty_save_termios(%struct.tty_struct* %239)
  %241 = load %struct.tty_struct*, %struct.tty_struct** %16, align 8
  %242 = call i32 @tty_kref_put(%struct.tty_struct* %241)
  br label %243

243:                                              ; preds = %217, %210
  %244 = load %struct.usb_serial_port*, %struct.usb_serial_port** %14, align 8
  %245 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %244, i32 0, i32 0
  %246 = call i32 @tty_port_set_initialized(%struct.TYPE_10__* %245, i32 1)
  br label %247

247:                                              ; preds = %243, %125
  %248 = load %struct.usb_serial_port*, %struct.usb_serial_port** %14, align 8
  %249 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %251, -1
  store i64 %252, i64* %250, align 8
  %253 = load %struct.usb_serial_port*, %struct.usb_serial_port** %14, align 8
  %254 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 0
  store i32 1, i32* %255, align 8
  %256 = load %struct.usb_serial*, %struct.usb_serial** %13, align 8
  %257 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %256, i32 0, i32 0
  %258 = call i32 @mutex_unlock(i32* %257)
  %259 = load i32, i32* %15, align 4
  store i32 %259, i32* %3, align 4
  br label %283

260:                                              ; preds = %206
  %261 = load %struct.usb_serial_port*, %struct.usb_serial_port** %14, align 8
  %262 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %261, i32 0, i32 0
  %263 = call i32 @tty_port_tty_set(%struct.TYPE_10__* %262, %struct.tty_struct* null)
  %264 = load %struct.tty_struct*, %struct.tty_struct** %16, align 8
  %265 = call i32 @tty_kref_put(%struct.tty_struct* %264)
  br label %266

266:                                              ; preds = %260, %153
  %267 = load %struct.usb_serial_port*, %struct.usb_serial_port** %14, align 8
  %268 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 1
  store i64 0, i64* %269, align 8
  %270 = load %struct.usbcons_info*, %struct.usbcons_info** %6, align 8
  %271 = getelementptr inbounds %struct.usbcons_info, %struct.usbcons_info* %270, i32 0, i32 0
  store %struct.usb_serial_port* null, %struct.usb_serial_port** %271, align 8
  %272 = load %struct.usb_serial*, %struct.usb_serial** %13, align 8
  %273 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @usb_autopm_put_interface(i32 %274)
  br label %276

276:                                              ; preds = %266, %124
  %277 = load %struct.usb_serial*, %struct.usb_serial** %13, align 8
  %278 = call i32 @usb_serial_put(%struct.usb_serial* %277)
  %279 = load %struct.usb_serial*, %struct.usb_serial** %13, align 8
  %280 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %279, i32 0, i32 0
  %281 = call i32 @mutex_unlock(i32* %280)
  %282 = load i32, i32* %15, align 4
  store i32 %282, i32* %3, align 4
  br label %283

283:                                              ; preds = %276, %247, %107
  %284 = load i32, i32* %3, align 4
  ret i32 %284
}

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local %struct.usb_serial_port* @usb_serial_port_get_by_minor(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @tty_port_tty_set(%struct.TYPE_10__*, %struct.tty_struct*) #1

declare dso_local i32 @tty_port_initialized(%struct.TYPE_10__*) #1

declare dso_local %struct.tty_struct* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @init_ldsem(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @tty_init_termios(%struct.tty_struct*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @memset(%struct.ktermios*, i32, i32) #1

declare dso_local i32 @tty_save_termios(%struct.tty_struct*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @tty_port_set_initialized(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

declare dso_local i32 @usb_serial_put(%struct.usb_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
