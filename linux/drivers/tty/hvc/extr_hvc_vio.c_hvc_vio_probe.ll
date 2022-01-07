; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_vio.c_hvc_vio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_vio.c_hvc_vio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_ops = type { i32 }
%struct.hvterm_priv = type { i64, i32, i32, i64 }
%struct.vio_dev = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vio_device_id = type { i32 }
%struct.hvc_struct = type { i64 }

@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"hvterm1\00", align 1
@HV_PROTOCOL_RAW = common dso_local global i64 0, align 8
@hvterm_raw_ops = common dso_local global %struct.hv_ops zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"hvterm-protocol\00", align 1
@HV_PROTOCOL_HVSI = common dso_local global i64 0, align 8
@hvterm_hvsi_ops = common dso_local global %struct.hv_ops zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"hvc_vio: Unknown protocol for %pOF\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"hvc_vio_probe() device %pOF, using %s protocol\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"hvsi\00", align 1
@hvterm_privs = common dso_local global %struct.hvterm_priv** null, align 8
@hvterm_priv0 = common dso_local global %struct.hvterm_priv zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"->boot console, using termno 0\0A\00", align 1
@MAX_NR_HVC_CONSOLES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"->non-boot console, using termno %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hvc_get_chars = common dso_local global i32 0, align 4
@hvc_put_chars = common dso_local global i32 0, align 4
@MAX_VIO_PUT_CHARS = common dso_local global i32 0, align 4
@udbg_putc = common dso_local global i64 0, align 8
@udbg_hvc_putc = common dso_local global i64 0, align 8
@udbg_hvc_getc = common dso_local global i32 0, align 4
@udbg_getc = common dso_local global i32 0, align 4
@udbg_hvc_getc_poll = common dso_local global i32 0, align 4
@udbg_getc_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*, %struct.vio_device_id*)* @hvc_vio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvc_vio_probe(%struct.vio_dev* %0, %struct.vio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_dev*, align 8
  %5 = alloca %struct.vio_device_id*, align 8
  %6 = alloca %struct.hv_ops*, align 8
  %7 = alloca %struct.hvc_struct*, align 8
  %8 = alloca %struct.hvterm_priv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vio_dev* %0, %struct.vio_dev** %4, align 8
  store %struct.vio_device_id* %1, %struct.vio_device_id** %5, align 8
  store i32 -1, i32* %11, align 4
  %12 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %13 = icmp ne %struct.vio_dev* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.vio_device_id*, %struct.vio_device_id** %5, align 8
  %16 = icmp ne %struct.vio_device_id* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* @EPERM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %168

20:                                               ; preds = %14
  %21 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %22 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @of_device_is_compatible(i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i64, i64* @HV_PROTOCOL_RAW, align 8
  store i64 %28, i64* %9, align 8
  store %struct.hv_ops* @hvterm_raw_ops, %struct.hv_ops** %6, align 8
  br label %47

29:                                               ; preds = %20
  %30 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %31 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @of_device_is_compatible(i32 %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i64, i64* @HV_PROTOCOL_HVSI, align 8
  store i64 %37, i64* %9, align 8
  store %struct.hv_ops* @hvterm_hvsi_ops, %struct.hv_ops** %6, align 8
  br label %46

38:                                               ; preds = %29
  %39 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %40 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @ENXIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %168

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %27
  %48 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %49 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @HV_PROTOCOL_RAW, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %57 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %51, i8* %56)
  %58 = load %struct.hvterm_priv**, %struct.hvterm_priv*** @hvterm_privs, align 8
  %59 = getelementptr inbounds %struct.hvterm_priv*, %struct.hvterm_priv** %58, i64 0
  %60 = load %struct.hvterm_priv*, %struct.hvterm_priv** %59, align 8
  %61 = icmp eq %struct.hvterm_priv* %60, @hvterm_priv0
  br i1 %61, label %62, label %73

62:                                               ; preds = %47
  %63 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %64 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* getelementptr inbounds (%struct.hvterm_priv, %struct.hvterm_priv* @hvterm_priv0, i32 0, i32 0), align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.hvterm_priv**, %struct.hvterm_priv*** @hvterm_privs, align 8
  %70 = getelementptr inbounds %struct.hvterm_priv*, %struct.hvterm_priv** %69, i64 0
  %71 = load %struct.hvterm_priv*, %struct.hvterm_priv** %70, align 8
  store %struct.hvterm_priv* %71, %struct.hvterm_priv** %8, align 8
  store i32 0, i32* %11, align 4
  %72 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %137

73:                                               ; preds = %62, %47
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %93, %73
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @MAX_NR_HVC_CONSOLES, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 0
  br label %81

81:                                               ; preds = %78, %74
  %82 = phi i1 [ false, %74 ], [ %80, %78 ]
  br i1 %82, label %83, label %96

83:                                               ; preds = %81
  %84 = load %struct.hvterm_priv**, %struct.hvterm_priv*** @hvterm_privs, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.hvterm_priv*, %struct.hvterm_priv** %84, i64 %86
  %88 = load %struct.hvterm_priv*, %struct.hvterm_priv** %87, align 8
  %89 = icmp ne %struct.hvterm_priv* %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %90, %83
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %74

96:                                               ; preds = %81
  %97 = load i32, i32* %11, align 4
  %98 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* @ENODEV, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %168

104:                                              ; preds = %96
  %105 = load i32, i32* @GFP_KERNEL, align 4
  %106 = call %struct.hvterm_priv* @kzalloc(i32 24, i32 %105)
  store %struct.hvterm_priv* %106, %struct.hvterm_priv** %8, align 8
  %107 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %108 = icmp ne %struct.hvterm_priv* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %168

112:                                              ; preds = %104
  %113 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %114 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %117 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load i64, i64* %9, align 8
  %119 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %120 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %119, i32 0, i32 3
  store i64 %118, i64* %120, align 8
  %121 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %122 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %121, i32 0, i32 2
  %123 = call i32 @spin_lock_init(i32* %122)
  %124 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %125 = load %struct.hvterm_priv**, %struct.hvterm_priv*** @hvterm_privs, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.hvterm_priv*, %struct.hvterm_priv** %125, i64 %127
  store %struct.hvterm_priv* %124, %struct.hvterm_priv** %128, align 8
  %129 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %130 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %129, i32 0, i32 1
  %131 = load i32, i32* @hvc_get_chars, align 4
  %132 = load i32, i32* @hvc_put_chars, align 4
  %133 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %134 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @hvsilib_init(i32* %130, i32 %131, i32 %132, i64 %135, i32 0)
  br label %137

137:                                              ; preds = %112, %68
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %140 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.hv_ops*, %struct.hv_ops** %6, align 8
  %143 = load i32, i32* @MAX_VIO_PUT_CHARS, align 4
  %144 = call %struct.hvc_struct* @hvc_alloc(i32 %138, i32 %141, %struct.hv_ops* %142, i32 %143)
  store %struct.hvc_struct* %144, %struct.hvc_struct** %7, align 8
  %145 = load %struct.hvc_struct*, %struct.hvc_struct** %7, align 8
  %146 = call i64 @IS_ERR(%struct.hvc_struct* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %137
  %149 = load %struct.hvc_struct*, %struct.hvc_struct** %7, align 8
  %150 = call i32 @PTR_ERR(%struct.hvc_struct* %149)
  store i32 %150, i32* %3, align 4
  br label %168

151:                                              ; preds = %137
  %152 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %153 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %152, i32 0, i32 1
  %154 = load %struct.hvc_struct*, %struct.hvc_struct** %7, align 8
  %155 = call i32 @dev_set_drvdata(%struct.TYPE_2__* %153, %struct.hvc_struct* %154)
  %156 = load %struct.hvc_struct*, %struct.hvc_struct** %7, align 8
  %157 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %151
  %161 = load i64, i64* @udbg_putc, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %160
  %164 = load i64, i64* @udbg_hvc_putc, align 8
  store i64 %164, i64* @udbg_putc, align 8
  %165 = load i32, i32* @udbg_hvc_getc, align 4
  store i32 %165, i32* @udbg_getc, align 4
  %166 = load i32, i32* @udbg_hvc_getc_poll, align 4
  store i32 %166, i32* @udbg_getc_poll, align 4
  br label %167

167:                                              ; preds = %163, %160, %151
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %167, %148, %109, %101, %38, %17
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_devel(i8*, ...) #1

declare dso_local %struct.hvterm_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hvsilib_init(i32*, i32, i32, i64, i32) #1

declare dso_local %struct.hvc_struct* @hvc_alloc(i32, i32, %struct.hv_ops*, i32) #1

declare dso_local i64 @IS_ERR(%struct.hvc_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.hvc_struct*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_2__*, %struct.hvc_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
