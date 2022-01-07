; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfcdiag_loop_self_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfcdiag_loop_self_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32*, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32* }
%struct.lpfc_dmabuf = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_RPI_ALLOC_ERROR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@LPFC_MBOX_TMO = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@MBX_TIMEOUT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i32*)* @lpfcdiag_loop_self_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfcdiag_loop_self_reg(%struct.lpfc_hba* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.lpfc_dmabuf*, align 8
  %8 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.TYPE_14__* @mempool_alloc(i32 %11, i32 %12)
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %6, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %15 = icmp ne %struct.TYPE_14__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %187

19:                                               ; preds = %2
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LPFC_SLI_REV4, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 2
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %33 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %32, i32 0, i32 2
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @lpfc_reg_rpi(%struct.lpfc_hba* %26, i32 0, i32 %31, i32* %35, %struct.TYPE_14__* %36, i32 %38)
  store i32 %39, i32* %8, align 4
  br label %76

40:                                               ; preds = %19
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %42 = call i32 @lpfc_sli4_alloc_rpi(%struct.lpfc_hba* %41)
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @LPFC_RPI_ALLOC_ERROR, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @mempool_free(%struct.TYPE_14__* %49, i32 %52)
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %187

56:                                               ; preds = %40
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 2
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %64 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %63, i32 0, i32 2
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 2
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @lpfc_reg_rpi(%struct.lpfc_hba* %57, i32 %62, i32 %67, i32* %71, %struct.TYPE_14__* %72, i32 %74)
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %56, %25
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %76
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %82 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @mempool_free(%struct.TYPE_14__* %80, i32 %83)
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @LPFC_SLI_REV4, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %79
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @lpfc_sli4_free_rpi(%struct.lpfc_hba* %91, i32 %93)
  br label %95

95:                                               ; preds = %90, %79
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %187

98:                                               ; preds = %76
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = bitcast i32* %101 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %102, %struct.lpfc_dmabuf** %7, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  store i32* null, i32** %104, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  store i32* null, i32** %106, align 8
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %109 = load i32, i32* @LPFC_MBOX_TMO, align 4
  %110 = call i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba* %107, %struct.TYPE_14__* %108, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @MBX_SUCCESS, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %121, label %114

114:                                              ; preds = %98
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %155

121:                                              ; preds = %114, %98
  %122 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %123 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %124 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %127 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %122, i32 %125, i32 %128)
  %130 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %131 = call i32 @kfree(%struct.lpfc_dmabuf* %130)
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @MBX_TIMEOUT, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %121
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %137 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %138 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @mempool_free(%struct.TYPE_14__* %136, i32 %139)
  br label %141

141:                                              ; preds = %135, %121
  %142 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %143 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @LPFC_SLI_REV4, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %141
  %148 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %149 = load i32*, i32** %5, align 8
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @lpfc_sli4_free_rpi(%struct.lpfc_hba* %148, i32 %150)
  br label %152

152:                                              ; preds = %147, %141
  %153 = load i32, i32* @ENODEV, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %3, align 4
  br label %187

155:                                              ; preds = %114
  %156 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %157 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @LPFC_SLI_REV4, align 8
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %155
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %5, align 8
  store i32 %169, i32* %170, align 4
  br label %171

171:                                              ; preds = %161, %155
  %172 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %173 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %174 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %177 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %172, i32 %175, i32 %178)
  %180 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %181 = call i32 @kfree(%struct.lpfc_dmabuf* %180)
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %183 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %184 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @mempool_free(%struct.TYPE_14__* %182, i32 %185)
  store i32 0, i32* %3, align 4
  br label %187

187:                                              ; preds = %171, %152, %95, %48, %16
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local %struct.TYPE_14__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_reg_rpi(%struct.lpfc_hba*, i32, i32, i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @lpfc_sli4_alloc_rpi(%struct.lpfc_hba*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @lpfc_sli4_free_rpi(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
