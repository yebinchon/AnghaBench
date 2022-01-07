; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_device.c_optee_enumerate_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_device.c_optee_enumerate_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_shm = type { i32 }
%struct.tee_ioctl_open_session_arg = type { i64, i32, i64, i32, i32 }
%struct.tee_context = type { i32 }

@optee_ctx_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@TEE_IOCTL_UUID_LEN = common dso_local global i32 0, align 4
@TEE_IOCTL_LOGIN_PUBLIC = common dso_local global i32 0, align 4
@TEEC_SUCCESS = common dso_local global i64 0, align 8
@TEE_SHM_MAPPED = common dso_local global i32 0, align 4
@TEE_SHM_DMA_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"tee_shm_alloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"tee_shm_get_va failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @optee_enumerate_devices() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.tee_shm, align 4
  %3 = alloca %struct.tee_ioctl_open_session_arg, align 8
  %4 = alloca %struct.tee_shm*, align 8
  %5 = alloca %struct.tee_shm*, align 8
  %6 = alloca %struct.tee_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = call i32 @UUID_INIT(i32 1880204936, i32 56798, i32 16467, i32 165, i32 169, i32 123, i32 60, i32 77, i32 223, i32 19, i32 184)
  %12 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %2, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  store %struct.tee_shm* null, %struct.tee_shm** %4, align 8
  store %struct.tee_shm* null, %struct.tee_shm** %5, align 8
  store %struct.tee_context* null, %struct.tee_context** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %13 = call i32 @memset(%struct.tee_ioctl_open_session_arg* %3, i32 0, i32 32)
  %14 = load i32, i32* @optee_ctx_match, align 4
  %15 = call %struct.tee_shm* @tee_client_open_context(i32* null, i32 %14, i32* null, i32* null)
  %16 = bitcast %struct.tee_shm* %15 to %struct.tee_context*
  store %struct.tee_context* %16, %struct.tee_context** %6, align 8
  %17 = load %struct.tee_context*, %struct.tee_context** %6, align 8
  %18 = bitcast %struct.tee_context* %17 to %struct.tee_shm*
  %19 = call i64 @IS_ERR(%struct.tee_shm* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %0
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %1, align 4
  br label %130

24:                                               ; preds = %0
  %25 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, %struct.tee_ioctl_open_session_arg* %3, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %2, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TEE_IOCTL_UUID_LEN, align 4
  %30 = call i32 @memcpy(i32 %26, i32 %28, i32 %29)
  %31 = load i32, i32* @TEE_IOCTL_LOGIN_PUBLIC, align 4
  %32 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, %struct.tee_ioctl_open_session_arg* %3, i32 0, i32 3
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, %struct.tee_ioctl_open_session_arg* %3, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.tee_context*, %struct.tee_context** %6, align 8
  %35 = bitcast %struct.tee_context* %34 to %struct.tee_shm*
  %36 = call i32 @tee_client_open_session(%struct.tee_shm* %35, %struct.tee_ioctl_open_session_arg* %3, i32* null)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, %struct.tee_ioctl_open_session_arg* %3, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TEEC_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %24
  store i32 0, i32* %10, align 4
  br label %125

45:                                               ; preds = %39
  %46 = load %struct.tee_context*, %struct.tee_context** %6, align 8
  %47 = bitcast %struct.tee_context* %46 to %struct.tee_shm*
  %48 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, %struct.tee_ioctl_open_session_arg* %3, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @get_devices(%struct.tee_shm* %47, i32 %49, %struct.tee_shm* null, i32* %7)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53, %45
  br label %119

57:                                               ; preds = %53
  %58 = load %struct.tee_context*, %struct.tee_context** %6, align 8
  %59 = bitcast %struct.tee_context* %58 to %struct.tee_shm*
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @TEE_SHM_MAPPED, align 4
  %62 = load i32, i32* @TEE_SHM_DMA_BUF, align 4
  %63 = or i32 %61, %62
  %64 = call %struct.tee_shm* @tee_shm_alloc(%struct.tee_shm* %59, i32 %60, i32 %63)
  store %struct.tee_shm* %64, %struct.tee_shm** %4, align 8
  %65 = load %struct.tee_shm*, %struct.tee_shm** %4, align 8
  %66 = call i64 @IS_ERR(%struct.tee_shm* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %57
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.tee_shm*, %struct.tee_shm** %4, align 8
  %71 = call i32 @PTR_ERR(%struct.tee_shm* %70)
  store i32 %71, i32* %10, align 4
  br label %119

72:                                               ; preds = %57
  %73 = load %struct.tee_context*, %struct.tee_context** %6, align 8
  %74 = bitcast %struct.tee_context* %73 to %struct.tee_shm*
  %75 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, %struct.tee_ioctl_open_session_arg* %3, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.tee_shm*, %struct.tee_shm** %4, align 8
  %78 = call i32 @get_devices(%struct.tee_shm* %74, i32 %76, %struct.tee_shm* %77, i32* %7)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %116

82:                                               ; preds = %72
  %83 = load %struct.tee_shm*, %struct.tee_shm** %4, align 8
  %84 = call %struct.tee_shm* @tee_shm_get_va(%struct.tee_shm* %83, i32 0)
  store %struct.tee_shm* %84, %struct.tee_shm** %5, align 8
  %85 = load %struct.tee_shm*, %struct.tee_shm** %5, align 8
  %86 = call i64 @IS_ERR(%struct.tee_shm* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %90 = load %struct.tee_shm*, %struct.tee_shm** %5, align 8
  %91 = call i32 @PTR_ERR(%struct.tee_shm* %90)
  store i32 %91, i32* %10, align 4
  br label %116

92:                                               ; preds = %82
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = udiv i64 %94, 4
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %112, %92
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %97
  %102 = load %struct.tee_shm*, %struct.tee_shm** %5, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %102, i64 %104
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @optee_register_device(%struct.tee_shm* %105, i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %116

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %97

115:                                              ; preds = %97
  br label %116

116:                                              ; preds = %115, %110, %88, %81
  %117 = load %struct.tee_shm*, %struct.tee_shm** %4, align 8
  %118 = call i32 @tee_shm_free(%struct.tee_shm* %117)
  br label %119

119:                                              ; preds = %116, %68, %56
  %120 = load %struct.tee_context*, %struct.tee_context** %6, align 8
  %121 = bitcast %struct.tee_context* %120 to %struct.tee_shm*
  %122 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, %struct.tee_ioctl_open_session_arg* %3, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @tee_client_close_session(%struct.tee_shm* %121, i32 %123)
  br label %125

125:                                              ; preds = %119, %44
  %126 = load %struct.tee_context*, %struct.tee_context** %6, align 8
  %127 = bitcast %struct.tee_context* %126 to %struct.tee_shm*
  %128 = call i32 @tee_client_close_context(%struct.tee_shm* %127)
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %1, align 4
  br label %130

130:                                              ; preds = %125, %21
  %131 = load i32, i32* %1, align 4
  ret i32 %131
}

declare dso_local i32 @UUID_INIT(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.tee_ioctl_open_session_arg*, i32, i32) #1

declare dso_local %struct.tee_shm* @tee_client_open_context(i32*, i32, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.tee_shm*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @tee_client_open_session(%struct.tee_shm*, %struct.tee_ioctl_open_session_arg*, i32*) #1

declare dso_local i32 @get_devices(%struct.tee_shm*, i32, %struct.tee_shm*, i32*) #1

declare dso_local %struct.tee_shm* @tee_shm_alloc(%struct.tee_shm*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.tee_shm*) #1

declare dso_local %struct.tee_shm* @tee_shm_get_va(%struct.tee_shm*, i32) #1

declare dso_local i32 @optee_register_device(%struct.tee_shm*, i32) #1

declare dso_local i32 @tee_shm_free(%struct.tee_shm*) #1

declare dso_local i32 @tee_client_close_session(%struct.tee_shm*, i32) #1

declare dso_local i32 @tee_client_close_context(%struct.tee_shm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
