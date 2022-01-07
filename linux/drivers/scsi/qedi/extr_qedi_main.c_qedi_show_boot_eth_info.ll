; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_show_boot_eth_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_show_boot_eth_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32 }
%struct.nvm_iscsi_initiator = type { i32, %struct.TYPE_18__, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_11__ = type { i8* }
%struct.nvm_iscsi_block = type { %struct.TYPE_10__, %struct.nvm_iscsi_initiator }
%struct.TYPE_10__ = type { i32 }

@NVM_ISCSI_CFG_GEN_IPV6_ENABLED = common dso_local global i32 0, align 4
@NVM_ISCSI_CFG_GEN_DHCP_TCPIP_CONFIG_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%pI6\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%pI4\0A\00", align 1
@IPV6_LEN = common dso_local global i32 0, align 4
@IPV4_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"0::0\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%hhd\0A\00", align 1
@SYSFS_FLAG_FW_SEL_BOOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@NVM_ISCSI_CFG_INITIATOR_VLAN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"3\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @qedi_show_boot_eth_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_show_boot_eth_info(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.qedi_ctx*, align 8
  %9 = alloca %struct.nvm_iscsi_initiator*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nvm_iscsi_block*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.qedi_ctx*
  store %struct.qedi_ctx* %20, %struct.qedi_ctx** %8, align 8
  store i32 1, i32* %10, align 4
  %21 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %22 = call %struct.nvm_iscsi_block* @qedi_get_nvram_block(%struct.qedi_ctx* %21)
  store %struct.nvm_iscsi_block* %22, %struct.nvm_iscsi_block** %14, align 8
  %23 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %14, align 8
  %24 = icmp ne %struct.nvm_iscsi_block* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %173

26:                                               ; preds = %3
  %27 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %14, align 8
  %28 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %27, i32 0, i32 1
  store %struct.nvm_iscsi_initiator* %28, %struct.nvm_iscsi_initiator** %9, align 8
  %29 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %14, align 8
  %30 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NVM_ISCSI_CFG_GEN_IPV6_ENABLED, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %11, align 4
  %35 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %14, align 8
  %36 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @NVM_ISCSI_CFG_GEN_DHCP_TCPIP_CONFIG_ENABLED, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  store i8* %44, i8** %15, align 8
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %26
  %48 = load %struct.nvm_iscsi_initiator*, %struct.nvm_iscsi_initiator** %9, align 8
  %49 = getelementptr inbounds %struct.nvm_iscsi_initiator, %struct.nvm_iscsi_initiator* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  br label %59

53:                                               ; preds = %26
  %54 = load %struct.nvm_iscsi_initiator*, %struct.nvm_iscsi_initiator** %9, align 8
  %55 = getelementptr inbounds %struct.nvm_iscsi_initiator, %struct.nvm_iscsi_initiator* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  br label %59

59:                                               ; preds = %53, %47
  %60 = phi i8* [ %52, %47 ], [ %58, %53 ]
  store i8* %60, i8** %16, align 8
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @IPV6_LEN, align 4
  br label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @IPV4_LEN, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load %struct.nvm_iscsi_initiator*, %struct.nvm_iscsi_initiator** %9, align 8
  %73 = getelementptr inbounds %struct.nvm_iscsi_initiator, %struct.nvm_iscsi_initiator* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  br label %83

77:                                               ; preds = %67
  %78 = load %struct.nvm_iscsi_initiator*, %struct.nvm_iscsi_initiator** %9, align 8
  %79 = getelementptr inbounds %struct.nvm_iscsi_initiator, %struct.nvm_iscsi_initiator* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  br label %83

83:                                               ; preds = %77, %71
  %84 = phi i8* [ %76, %71 ], [ %82, %77 ]
  store i8* %84, i8** %17, align 8
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load %struct.nvm_iscsi_initiator*, %struct.nvm_iscsi_initiator** %9, align 8
  %89 = getelementptr inbounds %struct.nvm_iscsi_initiator, %struct.nvm_iscsi_initiator* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  br label %99

93:                                               ; preds = %83
  %94 = load %struct.nvm_iscsi_initiator*, %struct.nvm_iscsi_initiator** %9, align 8
  %95 = getelementptr inbounds %struct.nvm_iscsi_initiator, %struct.nvm_iscsi_initiator* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  br label %99

99:                                               ; preds = %93, %87
  %100 = phi i8* [ %92, %87 ], [ %98, %93 ]
  store i8* %100, i8** %18, align 8
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %106

104:                                              ; preds = %99
  %105 = load i8*, i8** %15, align 8
  br label %106

106:                                              ; preds = %104, %103
  %107 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %103 ], [ %105, %104 ]
  store i8* %107, i8** %15, align 8
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %106
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  store i8* %114, i8** %16, align 8
  %115 = load i8*, i8** %16, align 8
  store i8* %115, i8** %17, align 8
  %116 = load i8*, i8** %16, align 8
  store i8* %116, i8** %18, align 8
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 5, i32 8
  store i32 %120, i32* %13, align 4
  br label %121

121:                                              ; preds = %110, %106
  %122 = load i32, i32* %6, align 4
  switch i32 %122, label %170 [
    i32 132, label %123
    i32 129, label %129
    i32 134, label %135
    i32 135, label %141
    i32 133, label %145
    i32 131, label %148
    i32 128, label %155
    i32 130, label %163
  ]

123:                                              ; preds = %121
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* %13, align 4
  %126 = load i8*, i8** %15, align 8
  %127 = load i8*, i8** %16, align 8
  %128 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %124, i32 %125, i8* %126, i8* %127)
  store i32 %128, i32* %10, align 4
  br label %171

129:                                              ; preds = %121
  %130 = load i8*, i8** %7, align 8
  %131 = load i32, i32* %13, align 4
  %132 = load i8*, i8** %15, align 8
  %133 = load i8*, i8** %17, align 8
  %134 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %130, i32 %131, i8* %132, i8* %133)
  store i32 %134, i32* %10, align 4
  br label %171

135:                                              ; preds = %121
  %136 = load i8*, i8** %7, align 8
  %137 = load i32, i32* %13, align 4
  %138 = load i8*, i8** %15, align 8
  %139 = load i8*, i8** %18, align 8
  %140 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %136, i32 %137, i8* %138, i8* %139)
  store i32 %140, i32* %10, align 4
  br label %171

141:                                              ; preds = %121
  %142 = load i8*, i8** %7, align 8
  %143 = load i32, i32* @SYSFS_FLAG_FW_SEL_BOOT, align 4
  %144 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %142, i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %143)
  store i32 %144, i32* %10, align 4
  br label %171

145:                                              ; preds = %121
  %146 = load i8*, i8** %7, align 8
  %147 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %146, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32 %147, i32* %10, align 4
  br label %171

148:                                              ; preds = %121
  %149 = load i8*, i8** %7, align 8
  %150 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %151 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @ETH_ALEN, align 4
  %154 = call i32 @sysfs_format_mac(i8* %149, i32 %152, i32 %153)
  store i32 %154, i32* %10, align 4
  br label %171

155:                                              ; preds = %121
  %156 = load i8*, i8** %7, align 8
  %157 = load %struct.nvm_iscsi_initiator*, %struct.nvm_iscsi_initiator** %9, align 8
  %158 = getelementptr inbounds %struct.nvm_iscsi_initiator, %struct.nvm_iscsi_initiator* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @NVM_ISCSI_CFG_INITIATOR_VLAN, align 4
  %161 = call i32 @GET_FIELD2(i32 %159, i32 %160)
  %162 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %156, i32 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %161)
  store i32 %162, i32* %10, align 4
  br label %171

163:                                              ; preds = %121
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i8*, i8** %7, align 8
  %168 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %167, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %166, %163
  br label %171

170:                                              ; preds = %121
  store i32 0, i32* %10, align 4
  br label %171

171:                                              ; preds = %170, %169, %155, %148, %145, %141, %135, %129, %123
  %172 = load i32, i32* %10, align 4
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %171, %25
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local %struct.nvm_iscsi_block* @qedi_get_nvram_block(%struct.qedi_ctx*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @sysfs_format_mac(i8*, i32, i32) #1

declare dso_local i32 @GET_FIELD2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
