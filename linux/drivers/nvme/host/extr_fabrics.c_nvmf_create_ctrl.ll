; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fabrics.c_nvmf_create_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fabrics.c_nvmf_create_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32 }
%struct.device = type { i32 }
%struct.nvmf_ctrl_options = type { i32, i32 }
%struct.nvmf_transport_ops = type { i32, i32, i32, %struct.nvme_ctrl* (%struct.device.0*, %struct.nvmf_ctrl_options.1*)* }
%struct.device.0 = type opaque
%struct.nvmf_ctrl_options.1 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"nvme-%s\00", align 1
@NVMF_REQUIRED_OPTS = common dso_local global i32 0, align 4
@nvmf_transports_rwsem = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"no handler found for transport %s.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NVMF_ALLOWED_OPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvme_ctrl* (%struct.device*, i8*)* @nvmf_create_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvme_ctrl* @nvmf_create_ctrl(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.nvme_ctrl*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nvmf_ctrl_options*, align 8
  %7 = alloca %struct.nvmf_transport_ops*, align 8
  %8 = alloca %struct.nvme_ctrl*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.nvmf_ctrl_options* @kzalloc(i32 8, i32 %10)
  store %struct.nvmf_ctrl_options* %11, %struct.nvmf_ctrl_options** %6, align 8
  %12 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %6, align 8
  %13 = icmp ne %struct.nvmf_ctrl_options* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.nvme_ctrl* @ERR_PTR(i32 %16)
  store %struct.nvme_ctrl* %17, %struct.nvme_ctrl** %3, align 8
  br label %122

18:                                               ; preds = %2
  %19 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %6, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @nvmf_parse_options(%struct.nvmf_ctrl_options* %19, i8* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %117

25:                                               ; preds = %18
  %26 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %6, align 8
  %27 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @request_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %6, align 8
  %31 = load i32, i32* @NVMF_REQUIRED_OPTS, align 4
  %32 = call i32 @nvmf_check_required_opts(%struct.nvmf_ctrl_options* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %117

36:                                               ; preds = %25
  %37 = load i32, i32* @NVMF_REQUIRED_OPTS, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %6, align 8
  %40 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = call i32 @down_read(i32* @nvmf_transports_rwsem)
  %44 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %6, align 8
  %45 = call %struct.nvmf_transport_ops* @nvmf_lookup_transport(%struct.nvmf_ctrl_options* %44)
  store %struct.nvmf_transport_ops* %45, %struct.nvmf_transport_ops** %7, align 8
  %46 = load %struct.nvmf_transport_ops*, %struct.nvmf_transport_ops** %7, align 8
  %47 = icmp ne %struct.nvmf_transport_ops* %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %36
  %49 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %6, align 8
  %50 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %9, align 4
  br label %115

55:                                               ; preds = %36
  %56 = load %struct.nvmf_transport_ops*, %struct.nvmf_transport_ops** %7, align 8
  %57 = getelementptr inbounds %struct.nvmf_transport_ops, %struct.nvmf_transport_ops* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @try_module_get(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %9, align 4
  br label %115

64:                                               ; preds = %55
  %65 = call i32 @up_read(i32* @nvmf_transports_rwsem)
  %66 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %6, align 8
  %67 = load %struct.nvmf_transport_ops*, %struct.nvmf_transport_ops** %7, align 8
  %68 = getelementptr inbounds %struct.nvmf_transport_ops, %struct.nvmf_transport_ops* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @nvmf_check_required_opts(%struct.nvmf_ctrl_options* %66, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %110

74:                                               ; preds = %64
  %75 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %6, align 8
  %76 = load i32, i32* @NVMF_ALLOWED_OPTS, align 4
  %77 = load %struct.nvmf_transport_ops*, %struct.nvmf_transport_ops** %7, align 8
  %78 = getelementptr inbounds %struct.nvmf_transport_ops, %struct.nvmf_transport_ops* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %76, %79
  %81 = load %struct.nvmf_transport_ops*, %struct.nvmf_transport_ops** %7, align 8
  %82 = getelementptr inbounds %struct.nvmf_transport_ops, %struct.nvmf_transport_ops* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %80, %83
  %85 = call i32 @nvmf_check_allowed_opts(%struct.nvmf_ctrl_options* %75, i32 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %74
  br label %110

89:                                               ; preds = %74
  %90 = load %struct.nvmf_transport_ops*, %struct.nvmf_transport_ops** %7, align 8
  %91 = getelementptr inbounds %struct.nvmf_transport_ops, %struct.nvmf_transport_ops* %90, i32 0, i32 3
  %92 = load %struct.nvme_ctrl* (%struct.device.0*, %struct.nvmf_ctrl_options.1*)*, %struct.nvme_ctrl* (%struct.device.0*, %struct.nvmf_ctrl_options.1*)** %91, align 8
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = bitcast %struct.device* %93 to %struct.device.0*
  %95 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %6, align 8
  %96 = bitcast %struct.nvmf_ctrl_options* %95 to %struct.nvmf_ctrl_options.1*
  %97 = call %struct.nvme_ctrl* %92(%struct.device.0* %94, %struct.nvmf_ctrl_options.1* %96)
  store %struct.nvme_ctrl* %97, %struct.nvme_ctrl** %8, align 8
  %98 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %8, align 8
  %99 = call i64 @IS_ERR(%struct.nvme_ctrl* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %89
  %102 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %8, align 8
  %103 = call i32 @PTR_ERR(%struct.nvme_ctrl* %102)
  store i32 %103, i32* %9, align 4
  br label %110

104:                                              ; preds = %89
  %105 = load %struct.nvmf_transport_ops*, %struct.nvmf_transport_ops** %7, align 8
  %106 = getelementptr inbounds %struct.nvmf_transport_ops, %struct.nvmf_transport_ops* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @module_put(i32 %107)
  %109 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %8, align 8
  store %struct.nvme_ctrl* %109, %struct.nvme_ctrl** %3, align 8
  br label %122

110:                                              ; preds = %101, %88, %73
  %111 = load %struct.nvmf_transport_ops*, %struct.nvmf_transport_ops** %7, align 8
  %112 = getelementptr inbounds %struct.nvmf_transport_ops, %struct.nvmf_transport_ops* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @module_put(i32 %113)
  br label %117

115:                                              ; preds = %61, %48
  %116 = call i32 @up_read(i32* @nvmf_transports_rwsem)
  br label %117

117:                                              ; preds = %115, %110, %35, %24
  %118 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %6, align 8
  %119 = call i32 @nvmf_free_options(%struct.nvmf_ctrl_options* %118)
  %120 = load i32, i32* %9, align 4
  %121 = call %struct.nvme_ctrl* @ERR_PTR(i32 %120)
  store %struct.nvme_ctrl* %121, %struct.nvme_ctrl** %3, align 8
  br label %122

122:                                              ; preds = %117, %104, %14
  %123 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  ret %struct.nvme_ctrl* %123
}

declare dso_local %struct.nvmf_ctrl_options* @kzalloc(i32, i32) #1

declare dso_local %struct.nvme_ctrl* @ERR_PTR(i32) #1

declare dso_local i32 @nvmf_parse_options(%struct.nvmf_ctrl_options*, i8*) #1

declare dso_local i32 @request_module(i8*, i32) #1

declare dso_local i32 @nvmf_check_required_opts(%struct.nvmf_ctrl_options*, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.nvmf_transport_ops* @nvmf_lookup_transport(%struct.nvmf_ctrl_options*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @nvmf_check_allowed_opts(%struct.nvmf_ctrl_options*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nvme_ctrl*) #1

declare dso_local i32 @PTR_ERR(%struct.nvme_ctrl*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @nvmf_free_options(%struct.nvmf_ctrl_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
