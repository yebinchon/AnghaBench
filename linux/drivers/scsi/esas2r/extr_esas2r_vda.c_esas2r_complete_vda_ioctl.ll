; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_vda.c_esas2r_complete_vda_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_vda.c_esas2r_complete_vda_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_request = type { %struct.TYPE_20__, %struct.TYPE_16__*, i32, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.atto_vda_cfg_rsp, %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_19__ = type { i32 }
%struct.atto_vda_cfg_rsp = type { i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_30__, %struct.TYPE_27__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.atto_ioctl_vda = type { i32, %struct.TYPE_18__, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.atto_ioctl_vda_cfg_cmd, %struct.TYPE_28__, %struct.TYPE_24__ }
%struct.TYPE_17__ = type { i8* }
%struct.atto_ioctl_vda_cfg_cmd = type { %struct.TYPE_21__, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32, i32, i32, i8* }
%struct.TYPE_28__ = type { i32, i8*, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i8* }

@VDA_FLASH_FINFO = common dso_local global i32 0, align 4
@VDA_FLASH_FREAD = common dso_local global i32 0, align 4
@VDA_CFG_GET_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%1.1u.%2.2u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, %struct.esas2r_request*)* @esas2r_complete_vda_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_complete_vda_ioctl(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_request*, align 8
  %5 = alloca %struct.atto_ioctl_vda*, align 8
  %6 = alloca %struct.atto_ioctl_vda_cfg_cmd*, align 8
  %7 = alloca %struct.atto_vda_cfg_rsp*, align 8
  %8 = alloca [5 x i8], align 1
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %4, align 8
  %9 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %10 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.atto_ioctl_vda*
  store %struct.atto_ioctl_vda* %12, %struct.atto_ioctl_vda** %5, align 8
  %13 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %14 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.atto_ioctl_vda*, %struct.atto_ioctl_vda** %5, align 8
  %17 = getelementptr inbounds %struct.atto_ioctl_vda, %struct.atto_ioctl_vda* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load %struct.atto_ioctl_vda*, %struct.atto_ioctl_vda** %5, align 8
  %19 = getelementptr inbounds %struct.atto_ioctl_vda, %struct.atto_ioctl_vda* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %205 [
    i32 129, label %21
    i32 128, label %51
    i32 131, label %98
    i32 130, label %194
  ]

21:                                               ; preds = %2
  %22 = load %struct.atto_ioctl_vda*, %struct.atto_ioctl_vda** %5, align 8
  %23 = getelementptr inbounds %struct.atto_ioctl_vda, %struct.atto_ioctl_vda* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @VDA_FLASH_FINFO, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %21
  %30 = load %struct.atto_ioctl_vda*, %struct.atto_ioctl_vda** %5, align 8
  %31 = getelementptr inbounds %struct.atto_ioctl_vda, %struct.atto_ioctl_vda* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @VDA_FLASH_FREAD, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %29, %21
  %38 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %39 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @le32_to_cpu(i32 %42)
  %44 = load %struct.atto_ioctl_vda*, %struct.atto_ioctl_vda** %5, align 8
  %45 = getelementptr inbounds %struct.atto_ioctl_vda, %struct.atto_ioctl_vda* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  store i8* %43, i8** %49, align 8
  br label %50

50:                                               ; preds = %37, %29
  br label %206

51:                                               ; preds = %2
  %52 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %53 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.atto_ioctl_vda*, %struct.atto_ioctl_vda** %5, align 8
  %58 = getelementptr inbounds %struct.atto_ioctl_vda, %struct.atto_ioctl_vda* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 3
  store i32 %56, i32* %60, align 4
  %61 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %62 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le16_to_cpu(i32 %65)
  %67 = load %struct.atto_ioctl_vda*, %struct.atto_ioctl_vda** %5, align 8
  %68 = getelementptr inbounds %struct.atto_ioctl_vda, %struct.atto_ioctl_vda* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 2
  store i32 %66, i32* %70, align 8
  %71 = load %struct.atto_ioctl_vda*, %struct.atto_ioctl_vda** %5, align 8
  %72 = getelementptr inbounds %struct.atto_ioctl_vda, %struct.atto_ioctl_vda* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %51
  %76 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %77 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @le32_to_cpu(i32 %80)
  %82 = load %struct.atto_ioctl_vda*, %struct.atto_ioctl_vda** %5, align 8
  %83 = getelementptr inbounds %struct.atto_ioctl_vda, %struct.atto_ioctl_vda* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 1
  store i8* %81, i8** %85, align 8
  br label %86

86:                                               ; preds = %75, %51
  %87 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %88 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %87, i32 0, i32 1
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.atto_ioctl_vda*, %struct.atto_ioctl_vda** %5, align 8
  %94 = getelementptr inbounds %struct.atto_ioctl_vda, %struct.atto_ioctl_vda* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 0
  %97 = call i32 @esas2r_nuxi_mgt_data(i32 %92, i32* %96)
  br label %206

98:                                               ; preds = %2
  %99 = load %struct.atto_ioctl_vda*, %struct.atto_ioctl_vda** %5, align 8
  %100 = getelementptr inbounds %struct.atto_ioctl_vda, %struct.atto_ioctl_vda* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.atto_ioctl_vda_cfg_cmd, %struct.atto_ioctl_vda_cfg_cmd* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @VDA_CFG_GET_INIT, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %181

106:                                              ; preds = %98
  %107 = load %struct.atto_ioctl_vda*, %struct.atto_ioctl_vda** %5, align 8
  %108 = getelementptr inbounds %struct.atto_ioctl_vda, %struct.atto_ioctl_vda* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  store %struct.atto_ioctl_vda_cfg_cmd* %109, %struct.atto_ioctl_vda_cfg_cmd** %6, align 8
  %110 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %111 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 1
  store %struct.atto_vda_cfg_rsp* %112, %struct.atto_vda_cfg_rsp** %7, align 8
  %113 = call i32 @cpu_to_le32(i32 4)
  %114 = load %struct.atto_ioctl_vda_cfg_cmd*, %struct.atto_ioctl_vda_cfg_cmd** %6, align 8
  %115 = getelementptr inbounds %struct.atto_ioctl_vda_cfg_cmd, %struct.atto_ioctl_vda_cfg_cmd* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load %struct.atto_vda_cfg_rsp*, %struct.atto_vda_cfg_rsp** %7, align 8
  %117 = getelementptr inbounds %struct.atto_vda_cfg_rsp, %struct.atto_vda_cfg_rsp* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @le32_to_cpu(i32 %118)
  %120 = load %struct.atto_ioctl_vda_cfg_cmd*, %struct.atto_ioctl_vda_cfg_cmd** %6, align 8
  %121 = getelementptr inbounds %struct.atto_ioctl_vda_cfg_cmd, %struct.atto_ioctl_vda_cfg_cmd* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %122, i32 0, i32 3
  store i8* %119, i8** %123, align 8
  %124 = load %struct.atto_vda_cfg_rsp*, %struct.atto_vda_cfg_rsp** %7, align 8
  %125 = getelementptr inbounds %struct.atto_vda_cfg_rsp, %struct.atto_vda_cfg_rsp* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.atto_ioctl_vda_cfg_cmd*, %struct.atto_ioctl_vda_cfg_cmd** %6, align 8
  %128 = getelementptr inbounds %struct.atto_ioctl_vda_cfg_cmd, %struct.atto_ioctl_vda_cfg_cmd* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 2
  store i32 %126, i32* %130, align 8
  %131 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %132 = load %struct.atto_vda_cfg_rsp*, %struct.atto_vda_cfg_rsp** %7, align 8
  %133 = getelementptr inbounds %struct.atto_vda_cfg_rsp, %struct.atto_vda_cfg_rsp* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @le16_to_cpu(i32 %134)
  %136 = call i64 @LOBYTE(i32 %135)
  %137 = trunc i64 %136 to i32
  %138 = load %struct.atto_vda_cfg_rsp*, %struct.atto_vda_cfg_rsp** %7, align 8
  %139 = getelementptr inbounds %struct.atto_vda_cfg_rsp, %struct.atto_vda_cfg_rsp* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @le16_to_cpu(i32 %140)
  %142 = call i64 @HIBYTE(i32 %141)
  %143 = trunc i64 %142 to i32
  %144 = call i32 @snprintf(i8* %131, i32 5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %137, i32 %143)
  %145 = load %struct.atto_ioctl_vda_cfg_cmd*, %struct.atto_ioctl_vda_cfg_cmd** %6, align 8
  %146 = getelementptr inbounds %struct.atto_ioctl_vda_cfg_cmd, %struct.atto_ioctl_vda_cfg_cmd* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %147, i32 0, i32 0
  %149 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %150 = call i32 @memcpy(i32* %148, i8* %149, i32 4)
  %151 = load %struct.atto_ioctl_vda_cfg_cmd*, %struct.atto_ioctl_vda_cfg_cmd** %6, align 8
  %152 = getelementptr inbounds %struct.atto_ioctl_vda_cfg_cmd, %struct.atto_ioctl_vda_cfg_cmd* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @LOBYTE(i32 %155)
  %157 = call signext i8 @LOWORD(i64 %156)
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 65
  br i1 %159, label %160, label %170

160:                                              ; preds = %106
  %161 = load %struct.atto_ioctl_vda_cfg_cmd*, %struct.atto_ioctl_vda_cfg_cmd** %6, align 8
  %162 = getelementptr inbounds %struct.atto_ioctl_vda_cfg_cmd, %struct.atto_ioctl_vda_cfg_cmd* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.atto_ioctl_vda_cfg_cmd*, %struct.atto_ioctl_vda_cfg_cmd** %6, align 8
  %167 = getelementptr inbounds %struct.atto_ioctl_vda_cfg_cmd, %struct.atto_ioctl_vda_cfg_cmd* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %168, i32 0, i32 1
  store i32 %165, i32* %169, align 4
  br label %180

170:                                              ; preds = %106
  %171 = load %struct.atto_ioctl_vda_cfg_cmd*, %struct.atto_ioctl_vda_cfg_cmd** %6, align 8
  %172 = getelementptr inbounds %struct.atto_ioctl_vda_cfg_cmd, %struct.atto_ioctl_vda_cfg_cmd* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.atto_ioctl_vda_cfg_cmd*, %struct.atto_ioctl_vda_cfg_cmd** %6, align 8
  %177 = getelementptr inbounds %struct.atto_ioctl_vda_cfg_cmd, %struct.atto_ioctl_vda_cfg_cmd* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 1
  store i32 %175, i32* %179, align 4
  br label %180

180:                                              ; preds = %170, %160
  br label %193

181:                                              ; preds = %98
  %182 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %183 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %182, i32 0, i32 1
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.atto_ioctl_vda*, %struct.atto_ioctl_vda** %5, align 8
  %189 = getelementptr inbounds %struct.atto_ioctl_vda, %struct.atto_ioctl_vda* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.atto_ioctl_vda_cfg_cmd, %struct.atto_ioctl_vda_cfg_cmd* %190, i32 0, i32 0
  %192 = call i32 @esas2r_nuxi_cfg_data(i32 %187, %struct.TYPE_21__* %191)
  br label %193

193:                                              ; preds = %181, %180
  br label %206

194:                                              ; preds = %2
  %195 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %196 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i8* @le32_to_cpu(i32 %199)
  %201 = load %struct.atto_ioctl_vda*, %struct.atto_ioctl_vda** %5, align 8
  %202 = getelementptr inbounds %struct.atto_ioctl_vda, %struct.atto_ioctl_vda* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 0
  store i8* %200, i8** %204, align 8
  br label %206

205:                                              ; preds = %2
  br label %206

206:                                              ; preds = %205, %194, %193, %86, %50
  ret void
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @esas2r_nuxi_mgt_data(i32, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i64 @LOBYTE(i32) #1

declare dso_local i64 @HIBYTE(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local signext i8 @LOWORD(i64) #1

declare dso_local i32 @esas2r_nuxi_cfg_data(i32, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
