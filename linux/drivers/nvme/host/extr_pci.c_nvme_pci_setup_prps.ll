; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_pci_setup_prps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_pci_setup_prps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { %struct.dma_pool*, %struct.dma_pool*, %struct.TYPE_3__ }
%struct.dma_pool = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.request = type { i32 }
%struct.nvme_rw_command = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.nvme_iod = type { i32, i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@nvme_print_sgl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Invalid SGL for payload:%d nents:%d\0A\00", align 1
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*, %struct.request*, %struct.nvme_rw_command*)* @nvme_pci_setup_prps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_pci_setup_prps(%struct.nvme_dev* %0, %struct.request* %1, %struct.nvme_rw_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_dev*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.nvme_rw_command*, align 8
  %8 = alloca %struct.nvme_iod*, align 8
  %9 = alloca %struct.dma_pool*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8**, align 8
  store %struct.nvme_dev* %0, %struct.nvme_dev** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %struct.nvme_rw_command* %2, %struct.nvme_rw_command** %7, align 8
  %22 = load %struct.request*, %struct.request** %6, align 8
  %23 = call %struct.nvme_iod* @blk_mq_rq_to_pdu(%struct.request* %22)
  store %struct.nvme_iod* %23, %struct.nvme_iod** %8, align 8
  %24 = load %struct.request*, %struct.request** %6, align 8
  %25 = call i32 @blk_rq_payload_bytes(%struct.request* %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %27 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %26, i32 0, i32 3
  %28 = load %struct.scatterlist*, %struct.scatterlist** %27, align 8
  store %struct.scatterlist* %28, %struct.scatterlist** %11, align 8
  %29 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %30 = call i32 @sg_dma_len(%struct.scatterlist* %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %32 = call i32 @sg_dma_address(%struct.scatterlist* %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %34 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = sub nsw i32 %38, 1
  %40 = and i32 %37, %39
  store i32 %40, i32* %15, align 4
  %41 = load %struct.request*, %struct.request** %6, align 8
  %42 = call i8** @nvme_pci_iod_list(%struct.request* %41)
  store i8** %42, i8*** %17, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %15, align 4
  %45 = sub nsw i32 %43, %44
  %46 = load i32, i32* %10, align 4
  %47 = sub nsw i32 %46, %45
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %3
  %51 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %52 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  br label %199

53:                                               ; preds = %3
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %15, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load i32, i32* %12, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %15, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %13, align 4
  br label %74

67:                                               ; preds = %53
  %68 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %69 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %68)
  store %struct.scatterlist* %69, %struct.scatterlist** %11, align 8
  %70 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %71 = call i32 @sg_dma_address(%struct.scatterlist* %70)
  store i32 %71, i32* %13, align 4
  %72 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %73 = call i32 @sg_dma_len(%struct.scatterlist* %72)
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %67, %61
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %81 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %199

82:                                               ; preds = %74
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @DIV_ROUND_UP(i32 %83, i32 %84)
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %19, align 4
  %87 = icmp sle i32 %86, 32
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %90 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %89, i32 0, i32 1
  %91 = load %struct.dma_pool*, %struct.dma_pool** %90, align 8
  store %struct.dma_pool* %91, %struct.dma_pool** %9, align 8
  %92 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %93 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %92, i32 0, i32 1
  store i32 0, i32* %93, align 4
  br label %100

94:                                               ; preds = %82
  %95 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %96 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %95, i32 0, i32 0
  %97 = load %struct.dma_pool*, %struct.dma_pool** %96, align 8
  store %struct.dma_pool* %97, %struct.dma_pool** %9, align 8
  %98 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %99 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %98, i32 0, i32 1
  store i32 1, i32* %99, align 4
  br label %100

100:                                              ; preds = %94, %88
  %101 = load %struct.dma_pool*, %struct.dma_pool** %9, align 8
  %102 = load i32, i32* @GFP_ATOMIC, align 4
  %103 = call i8** @dma_pool_alloc(%struct.dma_pool* %101, i32 %102, i32* %18)
  store i8** %103, i8*** %16, align 8
  %104 = load i8**, i8*** %16, align 8
  %105 = icmp ne i8** %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %109 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %111 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %110, i32 0, i32 1
  store i32 -1, i32* %111, align 4
  %112 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %112, i32* %4, align 4
  br label %232

113:                                              ; preds = %100
  %114 = load i8**, i8*** %16, align 8
  %115 = bitcast i8** %114 to i8*
  %116 = load i8**, i8*** %17, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 0
  store i8* %115, i8** %117, align 8
  %118 = load i32, i32* %18, align 4
  %119 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %120 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  store i32 0, i32* %20, align 4
  br label %121

121:                                              ; preds = %191, %183, %113
  %122 = load i32, i32* %20, align 4
  %123 = load i32, i32* %14, align 4
  %124 = ashr i32 %123, 3
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %160

126:                                              ; preds = %121
  %127 = load i8**, i8*** %16, align 8
  store i8** %127, i8*** %21, align 8
  %128 = load %struct.dma_pool*, %struct.dma_pool** %9, align 8
  %129 = load i32, i32* @GFP_ATOMIC, align 4
  %130 = call i8** @dma_pool_alloc(%struct.dma_pool* %128, i32 %129, i32* %18)
  store i8** %130, i8*** %16, align 8
  %131 = load i8**, i8*** %16, align 8
  %132 = icmp ne i8** %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %126
  %134 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %134, i32* %4, align 4
  br label %232

135:                                              ; preds = %126
  %136 = load i8**, i8*** %16, align 8
  %137 = bitcast i8** %136 to i8*
  %138 = load i8**, i8*** %17, align 8
  %139 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %140 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i8*, i8** %138, i64 %143
  store i8* %137, i8** %144, align 8
  %145 = load i8**, i8*** %21, align 8
  %146 = load i32, i32* %20, align 4
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %145, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = load i8**, i8*** %16, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 0
  store i8* %150, i8** %152, align 8
  %153 = load i32, i32* %18, align 4
  %154 = call i8* @cpu_to_le64(i32 %153)
  %155 = load i8**, i8*** %21, align 8
  %156 = load i32, i32* %20, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %155, i64 %158
  store i8* %154, i8** %159, align 8
  store i32 1, i32* %20, align 4
  br label %160

160:                                              ; preds = %135, %121
  %161 = load i32, i32* %13, align 4
  %162 = call i8* @cpu_to_le64(i32 %161)
  %163 = load i8**, i8*** %16, align 8
  %164 = load i32, i32* %20, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %20, align 4
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i8*, i8** %163, i64 %166
  store i8* %162, i8** %167, align 8
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %12, align 4
  %170 = sub nsw i32 %169, %168
  store i32 %170, i32* %12, align 4
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %10, align 4
  %176 = sub nsw i32 %175, %174
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = icmp sle i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %160
  br label %198

180:                                              ; preds = %160
  %181 = load i32, i32* %12, align 4
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  br label %121

184:                                              ; preds = %180
  %185 = load i32, i32* %12, align 4
  %186 = icmp slt i32 %185, 0
  %187 = zext i1 %186 to i32
  %188 = call i64 @unlikely(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  br label %216

191:                                              ; preds = %184
  %192 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %193 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %192)
  store %struct.scatterlist* %193, %struct.scatterlist** %11, align 8
  %194 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %195 = call i32 @sg_dma_address(%struct.scatterlist* %194)
  store i32 %195, i32* %13, align 4
  %196 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %197 = call i32 @sg_dma_len(%struct.scatterlist* %196)
  store i32 %197, i32* %12, align 4
  br label %121

198:                                              ; preds = %179
  br label %199

199:                                              ; preds = %198, %78, %50
  %200 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %201 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %200, i32 0, i32 3
  %202 = load %struct.scatterlist*, %struct.scatterlist** %201, align 8
  %203 = call i32 @sg_dma_address(%struct.scatterlist* %202)
  %204 = call i8* @cpu_to_le64(i32 %203)
  %205 = load %struct.nvme_rw_command*, %struct.nvme_rw_command** %7, align 8
  %206 = getelementptr inbounds %struct.nvme_rw_command, %struct.nvme_rw_command* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 1
  store i8* %204, i8** %207, align 8
  %208 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %209 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i8* @cpu_to_le64(i32 %210)
  %212 = load %struct.nvme_rw_command*, %struct.nvme_rw_command** %7, align 8
  %213 = getelementptr inbounds %struct.nvme_rw_command, %struct.nvme_rw_command* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  store i8* %211, i8** %214, align 8
  %215 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %215, i32* %4, align 4
  br label %232

216:                                              ; preds = %190
  %217 = load i32, i32* @nvme_print_sgl, align 4
  %218 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %219 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %218, i32 0, i32 3
  %220 = load %struct.scatterlist*, %struct.scatterlist** %219, align 8
  %221 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %222 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @DO_ONCE(i32 %217, %struct.scatterlist* %220, i32 %223)
  %225 = load %struct.request*, %struct.request** %6, align 8
  %226 = call i32 @blk_rq_payload_bytes(%struct.request* %225)
  %227 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %228 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @WARN(i32 %224, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %226, i32 %229)
  %231 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %231, i32* %4, align 4
  br label %232

232:                                              ; preds = %216, %199, %133, %106
  %233 = load i32, i32* %4, align 4
  ret i32 %233
}

declare dso_local %struct.nvme_iod* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @blk_rq_payload_bytes(%struct.request*) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i8** @nvme_pci_iod_list(%struct.request*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i8** @dma_pool_alloc(%struct.dma_pool*, i32, i32*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @DO_ONCE(i32, %struct.scatterlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
