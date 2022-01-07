; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_cxgb3i_dev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_cxgb3i_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 }
%struct.cxgbi_device = type { i32, i32, i32, i32*, %struct.TYPE_4__**, i32*, i32, i32, i32, i32, i32, %struct.t3cdev* }
%struct.TYPE_4__ = type { i32 }
%struct.adapter = type { %struct.TYPE_3__, i32*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"0x%p, updating.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"device 0x%p register failed.\0A\00", align 1
@CXGBI_FLAG_DEV_T3 = common dso_local global i32 0, align 4
@CXGBI_FLAG_IPV4_SET = common dso_local global i32 0, align 4
@NMTUS = common dso_local global i32 0, align 4
@cxgb3i_rx_credit_thres = common dso_local global i32 0, align 4
@CXGB3I_TX_HEADER_LEN = common dso_local global i32 0, align 4
@cxgb3i_iscsi_transport = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"0x%p ddp init failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0x%p offload init failed\0A\00", align 1
@CXGB3I_MAX_LUN = common dso_local global i32 0, align 4
@CXGBI_MAX_CONN = common dso_local global i32 0, align 4
@cxgb3i_host_template = common dso_local global i32 0, align 4
@cxgb3i_stt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"cdev 0x%p, f 0x%x, t3dev 0x%p open, err %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t3cdev*)* @cxgb3i_dev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb3i_dev_open(%struct.t3cdev* %0) #0 {
  %2 = alloca %struct.t3cdev*, align 8
  %3 = alloca %struct.cxgbi_device*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.t3cdev* %0, %struct.t3cdev** %2, align 8
  %7 = load %struct.t3cdev*, %struct.t3cdev** %2, align 8
  %8 = call %struct.cxgbi_device* @cxgbi_device_find_by_lldev(%struct.t3cdev* %7)
  store %struct.cxgbi_device* %8, %struct.cxgbi_device** %3, align 8
  %9 = load %struct.t3cdev*, %struct.t3cdev** %2, align 8
  %10 = call %struct.adapter* @tdev2adap(%struct.t3cdev* %9)
  store %struct.adapter* %10, %struct.adapter** %4, align 8
  %11 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %12 = icmp ne %struct.cxgbi_device* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %15 = call i32 (i8*, %struct.cxgbi_device*, ...) @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_device* %14)
  br label %140

16:                                               ; preds = %1
  %17 = load %struct.adapter*, %struct.adapter** %4, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.cxgbi_device* @cxgbi_device_register(i32 0, i32 %20)
  store %struct.cxgbi_device* %21, %struct.cxgbi_device** %3, align 8
  %22 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %23 = icmp ne %struct.cxgbi_device* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load %struct.t3cdev*, %struct.t3cdev** %2, align 8
  %26 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.t3cdev* %25)
  br label %140

27:                                               ; preds = %16
  %28 = load i32, i32* @CXGBI_FLAG_DEV_T3, align 4
  %29 = load i32, i32* @CXGBI_FLAG_IPV4_SET, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %32 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.t3cdev*, %struct.t3cdev** %2, align 8
  %34 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %35 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %34, i32 0, i32 11
  store %struct.t3cdev* %33, %struct.t3cdev** %35, align 8
  %36 = load %struct.adapter*, %struct.adapter** %4, align 8
  %37 = getelementptr inbounds %struct.adapter, %struct.adapter* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %40 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %39, i32 0, i32 10
  store i32 %38, i32* %40, align 8
  %41 = load %struct.adapter*, %struct.adapter** %4, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %45 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %44, i32 0, i32 3
  store i32* %43, i32** %45, align 8
  %46 = load %struct.adapter*, %struct.adapter** %4, align 8
  %47 = getelementptr inbounds %struct.adapter, %struct.adapter* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %51 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.adapter*, %struct.adapter** %4, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %57 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %56, i32 0, i32 9
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @NMTUS, align 4
  %59 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %60 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @cxgb3i_rx_credit_thres, align 4
  %62 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %63 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @CXGB3I_TX_HEADER_LEN, align 4
  %65 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %66 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %68 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %67, i32 0, i32 2
  store i32 4, i32* %68, align 8
  %69 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %70 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %69, i32 0, i32 5
  store i32* @cxgb3i_iscsi_transport, i32** %70, align 8
  %71 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %72 = call i32 @cxgb3i_ddp_init(%struct.cxgbi_device* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %27
  %76 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 (i8*, %struct.cxgbi_device*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), %struct.cxgbi_device* %76, i32 %77)
  br label %137

79:                                               ; preds = %27
  %80 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %81 = call i32 @cxgb3i_ofld_init(%struct.cxgbi_device* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %86 = call i32 (i8*, %struct.cxgbi_device*, ...) @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), %struct.cxgbi_device* %85)
  br label %137

87:                                               ; preds = %79
  %88 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %89 = load i32, i32* @CXGB3I_MAX_LUN, align 4
  %90 = load i32, i32* @CXGBI_MAX_CONN, align 4
  %91 = load i32, i32* @cxgb3i_stt, align 4
  %92 = call i32 @cxgbi_hbas_add(%struct.cxgbi_device* %88, i32 %89, i32 %90, i32* @cxgb3i_host_template, i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %137

96:                                               ; preds = %87
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %120, %96
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %100 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %123

103:                                              ; preds = %97
  %104 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %105 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @cxgb3i_get_private_ipv4addr(i32 %110)
  %112 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %113 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %112, i32 0, i32 4
  %114 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %114, i64 %116
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i32 %111, i32* %119, align 4
  br label %120

120:                                              ; preds = %103
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %97

123:                                              ; preds = %97
  %124 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %125 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %126 = icmp ne %struct.cxgbi_device* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %129 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  br label %132

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131, %127
  %133 = phi i32 [ %130, %127 ], [ 0, %131 ]
  %134 = load %struct.t3cdev*, %struct.t3cdev** %2, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call i32 (i8*, %struct.cxgbi_device*, ...) @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), %struct.cxgbi_device* %124, i32 %133, %struct.t3cdev* %134, i32 %135)
  br label %140

137:                                              ; preds = %95, %84, %75
  %138 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %139 = call i32 @cxgbi_device_unregister(%struct.cxgbi_device* %138)
  br label %140

140:                                              ; preds = %137, %132, %24, %13
  ret void
}

declare dso_local %struct.cxgbi_device* @cxgbi_device_find_by_lldev(%struct.t3cdev*) #1

declare dso_local %struct.adapter* @tdev2adap(%struct.t3cdev*) #1

declare dso_local i32 @pr_info(i8*, %struct.cxgbi_device*, ...) #1

declare dso_local %struct.cxgbi_device* @cxgbi_device_register(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, %struct.t3cdev*) #1

declare dso_local i32 @cxgb3i_ddp_init(%struct.cxgbi_device*) #1

declare dso_local i32 @cxgb3i_ofld_init(%struct.cxgbi_device*) #1

declare dso_local i32 @cxgbi_hbas_add(%struct.cxgbi_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @cxgb3i_get_private_ipv4addr(i32) #1

declare dso_local i32 @cxgbi_device_unregister(%struct.cxgbi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
