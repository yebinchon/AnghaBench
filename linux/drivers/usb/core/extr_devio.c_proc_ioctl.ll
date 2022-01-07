; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_devio.c_proc_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_devio.c_proc_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_dev_state = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.usbdevfs_ioctl = type { i32, i32, i32 }
%struct.usb_interface = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.usb_driver = type { i32 (%struct.usb_interface*, i32, i8*)* }

@EACCES = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@_IOC_WRITE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@USB_STATE_CONFIGURED = common dso_local global i64 0, align 8
@EHOSTUNREACH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"disconnect by usbfs\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@_IOC_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_dev_state*, %struct.usbdevfs_ioctl*)* @proc_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_ioctl(%struct.usb_dev_state* %0, %struct.usbdevfs_ioctl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_dev_state*, align 8
  %5 = alloca %struct.usbdevfs_ioctl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_interface*, align 8
  %10 = alloca %struct.usb_driver*, align 8
  store %struct.usb_dev_state* %0, %struct.usb_dev_state** %4, align 8
  store %struct.usbdevfs_ioctl* %1, %struct.usbdevfs_ioctl** %5, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store %struct.usb_interface* null, %struct.usb_interface** %9, align 8
  store %struct.usb_driver* null, %struct.usb_driver** %10, align 8
  %11 = load %struct.usb_dev_state*, %struct.usb_dev_state** %4, align 8
  %12 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EACCES, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %204

18:                                               ; preds = %2
  %19 = load %struct.usb_dev_state*, %struct.usb_dev_state** %4, align 8
  %20 = call i32 @connected(%struct.usb_dev_state* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %204

25:                                               ; preds = %18
  %26 = load %struct.usbdevfs_ioctl*, %struct.usbdevfs_ioctl** %5, align 8
  %27 = getelementptr inbounds %struct.usbdevfs_ioctl, %struct.usbdevfs_ioctl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @_IOC_SIZE(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kmalloc(i32 %33, i32 %34)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %204

41:                                               ; preds = %32
  %42 = load %struct.usbdevfs_ioctl*, %struct.usbdevfs_ioctl** %5, align 8
  %43 = getelementptr inbounds %struct.usbdevfs_ioctl, %struct.usbdevfs_ioctl* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @_IOC_DIR(i32 %44)
  %46 = load i32, i32* @_IOC_WRITE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %41
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.usbdevfs_ioctl*, %struct.usbdevfs_ioctl** %5, align 8
  %52 = getelementptr inbounds %struct.usbdevfs_ioctl, %struct.usbdevfs_ioctl* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @copy_from_user(i8* %50, i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @kfree(i8* %58)
  %60 = load i32, i32* @EFAULT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %204

62:                                               ; preds = %49
  br label %67

63:                                               ; preds = %41
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @memset(i8* %64, i32 0, i32 %65)
  br label %67

67:                                               ; preds = %63, %62
  br label %68

68:                                               ; preds = %67, %25
  %69 = load %struct.usb_dev_state*, %struct.usb_dev_state** %4, align 8
  %70 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @USB_STATE_CONFIGURED, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* @EHOSTUNREACH, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %175

79:                                               ; preds = %68
  %80 = load %struct.usb_dev_state*, %struct.usb_dev_state** %4, align 8
  %81 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load %struct.usbdevfs_ioctl*, %struct.usbdevfs_ioctl** %5, align 8
  %84 = getelementptr inbounds %struct.usbdevfs_ioctl, %struct.usbdevfs_ioctl* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.TYPE_4__* %82, i32 %85)
  store %struct.usb_interface* %86, %struct.usb_interface** %9, align 8
  %87 = icmp ne %struct.usb_interface* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %79
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %8, align 4
  br label %174

91:                                               ; preds = %79
  %92 = load %struct.usbdevfs_ioctl*, %struct.usbdevfs_ioctl** %5, align 8
  %93 = getelementptr inbounds %struct.usbdevfs_ioctl, %struct.usbdevfs_ioctl* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  switch i32 %94, label %131 [
    i32 128, label %95
    i32 129, label %117
  ]

95:                                               ; preds = %91
  %96 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %97 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %95
  %102 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %103 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call %struct.usb_driver* @to_usb_driver(i32 %105)
  store %struct.usb_driver* %106, %struct.usb_driver** %10, align 8
  %107 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %108 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %107, i32 0, i32 0
  %109 = call i32 @dev_dbg(%struct.TYPE_5__* %108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %110 = load %struct.usb_driver*, %struct.usb_driver** %10, align 8
  %111 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %112 = call i32 @usb_driver_release_interface(%struct.usb_driver* %110, %struct.usb_interface* %111)
  br label %116

113:                                              ; preds = %95
  %114 = load i32, i32* @ENODATA, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %113, %101
  br label %173

117:                                              ; preds = %91
  %118 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %119 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %117
  %124 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %125 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %124, i32 0, i32 0
  %126 = call i32 @device_attach(%struct.TYPE_5__* %125)
  store i32 %126, i32* %8, align 4
  br label %130

127:                                              ; preds = %117
  %128 = load i32, i32* @EBUSY, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %127, %123
  br label %173

131:                                              ; preds = %91
  %132 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %133 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %139 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call %struct.usb_driver* @to_usb_driver(i32 %141)
  store %struct.usb_driver* %142, %struct.usb_driver** %10, align 8
  br label %143

143:                                              ; preds = %137, %131
  %144 = load %struct.usb_driver*, %struct.usb_driver** %10, align 8
  %145 = icmp eq %struct.usb_driver* %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %143
  %147 = load %struct.usb_driver*, %struct.usb_driver** %10, align 8
  %148 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %147, i32 0, i32 0
  %149 = load i32 (%struct.usb_interface*, i32, i8*)*, i32 (%struct.usb_interface*, i32, i8*)** %148, align 8
  %150 = icmp eq i32 (%struct.usb_interface*, i32, i8*)* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %146, %143
  %152 = load i32, i32* @ENOTTY, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %8, align 4
  br label %172

154:                                              ; preds = %146
  %155 = load %struct.usb_driver*, %struct.usb_driver** %10, align 8
  %156 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %155, i32 0, i32 0
  %157 = load i32 (%struct.usb_interface*, i32, i8*)*, i32 (%struct.usb_interface*, i32, i8*)** %156, align 8
  %158 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %159 = load %struct.usbdevfs_ioctl*, %struct.usbdevfs_ioctl** %5, align 8
  %160 = getelementptr inbounds %struct.usbdevfs_ioctl, %struct.usbdevfs_ioctl* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i8*, i8** %7, align 8
  %163 = call i32 %157(%struct.usb_interface* %158, i32 %161, i8* %162)
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* @ENOIOCTLCMD, align 4
  %166 = sub nsw i32 0, %165
  %167 = icmp eq i32 %164, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %154
  %169 = load i32, i32* @ENOTTY, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %8, align 4
  br label %171

171:                                              ; preds = %168, %154
  br label %172

172:                                              ; preds = %171, %151
  br label %173

173:                                              ; preds = %172, %130, %116
  br label %174

174:                                              ; preds = %173, %88
  br label %175

175:                                              ; preds = %174, %76
  %176 = load i32, i32* %8, align 4
  %177 = icmp sge i32 %176, 0
  br i1 %177, label %178, label %200

178:                                              ; preds = %175
  %179 = load %struct.usbdevfs_ioctl*, %struct.usbdevfs_ioctl** %5, align 8
  %180 = getelementptr inbounds %struct.usbdevfs_ioctl, %struct.usbdevfs_ioctl* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @_IOC_DIR(i32 %181)
  %183 = load i32, i32* @_IOC_READ, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %178
  %187 = load i32, i32* %6, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %200

189:                                              ; preds = %186
  %190 = load %struct.usbdevfs_ioctl*, %struct.usbdevfs_ioctl** %5, align 8
  %191 = getelementptr inbounds %struct.usbdevfs_ioctl, %struct.usbdevfs_ioctl* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i8*, i8** %7, align 8
  %194 = load i32, i32* %6, align 4
  %195 = call i64 @copy_to_user(i32 %192, i8* %193, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %189
  %198 = load i32, i32* @EFAULT, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %8, align 4
  br label %200

200:                                              ; preds = %197, %189, %186, %178, %175
  %201 = load i8*, i8** %7, align 8
  %202 = call i32 @kfree(i8* %201)
  %203 = load i32, i32* %8, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %200, %57, %38, %22, %15
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @connected(%struct.usb_dev_state*) #1

declare dso_local i32 @_IOC_SIZE(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @_IOC_DIR(i32) #1

declare dso_local i64 @copy_from_user(i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.usb_driver* @to_usb_driver(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @usb_driver_release_interface(%struct.usb_driver*, %struct.usb_interface*) #1

declare dso_local i32 @device_attach(%struct.TYPE_5__*) #1

declare dso_local i64 @copy_to_user(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
