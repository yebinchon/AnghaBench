; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_sdw_cdns_pdi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_sdw_cdns_pdi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_cdns = type { i32, %struct.TYPE_2__*, i32, %struct.sdw_cdns_streams, %struct.sdw_cdns_streams }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sdw_cdns_streams = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sdw_cdns_stream_config = type { i32, i32, i32, i32, i32, i32 }

@CDNS_PCM_PDI_OFFSET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CDNS_PDM_PDI_OFFSET = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdw_cdns_pdi_init(%struct.sdw_cdns* %0, %struct.sdw_cdns_stream_config* byval(%struct.sdw_cdns_stream_config) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdw_cdns*, align 8
  %5 = alloca %struct.sdw_cdns_streams*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sdw_cdns* %0, %struct.sdw_cdns** %4, align 8
  %9 = getelementptr inbounds %struct.sdw_cdns_stream_config, %struct.sdw_cdns_stream_config* %1, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %12 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  %14 = getelementptr inbounds %struct.sdw_cdns_stream_config, %struct.sdw_cdns_stream_config* %1, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %17 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = getelementptr inbounds %struct.sdw_cdns_stream_config, %struct.sdw_cdns_stream_config* %1, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %22 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 8
  %24 = getelementptr inbounds %struct.sdw_cdns_stream_config, %struct.sdw_cdns_stream_config* %1, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %27 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = getelementptr inbounds %struct.sdw_cdns_stream_config, %struct.sdw_cdns_stream_config* %1, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %32 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = getelementptr inbounds %struct.sdw_cdns_stream_config, %struct.sdw_cdns_stream_config* %1, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %37 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 4
  %39 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %40 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %39, i32 0, i32 4
  store %struct.sdw_cdns_streams* %40, %struct.sdw_cdns_streams** %5, align 8
  %41 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %42 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CDNS_PCM_PDI_OFFSET, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %2
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %241

49:                                               ; preds = %2
  %50 = load i32, i32* @CDNS_PCM_PDI_OFFSET, align 4
  %51 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %52 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* @CDNS_PCM_PDI_OFFSET, align 4
  store i32 %55, i32* %6, align 4
  %56 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %57 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %58 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %57, i32 0, i32 6
  %59 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %60 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @cdns_allocate_pdi(%struct.sdw_cdns* %56, i32* %58, i32 %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %49
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %241

68:                                               ; preds = %49
  %69 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %70 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %75 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %76 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %75, i32 0, i32 5
  %77 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %78 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @cdns_allocate_pdi(%struct.sdw_cdns* %74, i32* %76, i32 %79, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %68
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %3, align 4
  br label %241

86:                                               ; preds = %68
  %87 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %88 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %6, align 4
  %92 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %93 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %94 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %93, i32 0, i32 4
  %95 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %96 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @cdns_allocate_pdi(%struct.sdw_cdns* %92, i32* %94, i32 %97, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %86
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %3, align 4
  br label %241

104:                                              ; preds = %86
  %105 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %106 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %109 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %107, %110
  %112 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %113 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %111, %114
  %116 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %117 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %119 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %122 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %124 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %123, i32 0, i32 3
  store %struct.sdw_cdns_streams* %124, %struct.sdw_cdns_streams** %5, align 8
  %125 = load i32, i32* @CDNS_PDM_PDI_OFFSET, align 4
  store i32 %125, i32* %6, align 4
  %126 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %127 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %128 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %127, i32 0, i32 6
  %129 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %130 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @cdns_allocate_pdi(%struct.sdw_cdns* %126, i32* %128, i32 %131, i32 %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %104
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %3, align 4
  br label %241

138:                                              ; preds = %104
  %139 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %140 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %6, align 4
  %144 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %145 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %146 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %145, i32 0, i32 5
  %147 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %148 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @cdns_allocate_pdi(%struct.sdw_cdns* %144, i32* %146, i32 %149, i32 %150)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %138
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* %3, align 4
  br label %241

156:                                              ; preds = %138
  %157 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %158 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %6, align 4
  %162 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %163 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %164 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %163, i32 0, i32 4
  %165 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %166 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @cdns_allocate_pdi(%struct.sdw_cdns* %162, i32* %164, i32 %167, i32 %168)
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %156
  %173 = load i32, i32* %8, align 4
  store i32 %173, i32* %3, align 4
  br label %241

174:                                              ; preds = %156
  %175 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %176 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %179 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %177, %180
  %182 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %183 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %181, %184
  %186 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %187 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 4
  %188 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %189 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %192 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = add nsw i32 %193, %190
  store i32 %194, i32* %192, align 8
  %195 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %196 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %199 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @GFP_KERNEL, align 4
  %202 = call %struct.TYPE_2__* @devm_kcalloc(i32 %197, i32 %200, i32 8, i32 %201)
  %203 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %204 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %203, i32 0, i32 1
  store %struct.TYPE_2__* %202, %struct.TYPE_2__** %204, align 8
  %205 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %206 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %205, i32 0, i32 1
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** %206, align 8
  %208 = icmp ne %struct.TYPE_2__* %207, null
  br i1 %208, label %213, label %209

209:                                              ; preds = %174
  %210 = load i32, i32* @ENOMEM, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %8, align 4
  %212 = load i32, i32* %8, align 4
  store i32 %212, i32* %3, align 4
  br label %241

213:                                              ; preds = %174
  store i32 0, i32* %7, align 4
  br label %214

214:                                              ; preds = %237, %213
  %215 = load i32, i32* %7, align 4
  %216 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %217 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp slt i32 %215, %218
  br i1 %219, label %220, label %240

220:                                              ; preds = %214
  %221 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %222 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %221, i32 0, i32 1
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %222, align 8
  %224 = load i32, i32* %7, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  store i32 0, i32* %227, align 4
  %228 = load i32, i32* %7, align 4
  %229 = add nsw i32 %228, 1
  %230 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %231 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %230, i32 0, i32 1
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** %231, align 8
  %233 = load i32, i32* %7, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 1
  store i32 %229, i32* %236, align 4
  br label %237

237:                                              ; preds = %220
  %238 = load i32, i32* %7, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %7, align 4
  br label %214

240:                                              ; preds = %214
  store i32 0, i32* %3, align 4
  br label %241

241:                                              ; preds = %240, %209, %172, %154, %136, %102, %84, %66, %46
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

declare dso_local i32 @cdns_allocate_pdi(%struct.sdw_cdns*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @devm_kcalloc(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
