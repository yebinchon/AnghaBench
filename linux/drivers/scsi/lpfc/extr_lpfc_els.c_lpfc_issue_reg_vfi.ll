; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_reg_vfi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_reg_vfi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.lpfc_dmabuf*, %struct.lpfc_vport*, i32 }
%struct.lpfc_dmabuf = type { i32, i64 }
%struct.lpfc_nodelist = type { i32 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LS_LOOPBACK_MODE = common dso_local global i32 0, align 4
@FC_PT2PT = common dso_local global i32 0, align 4
@Fabric_DID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FC_FABRIC = common dso_local global i32 0, align 4
@MEM_PRI = common dso_local global i32 0, align 4
@LPFC_FABRIC_CFG_LINK = common dso_local global i32 0, align 4
@lpfc_mbx_cmpl_reg_vfi = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@FC_VPORT_FAILED = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"0289 Issue Register VFI failed: Err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_issue_reg_vfi(%struct.lpfc_vport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca %struct.lpfc_dmabuf*, align 8
  %8 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %10 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %9, i32 0, i32 2
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  store %struct.lpfc_hba* %11, %struct.lpfc_hba** %4, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LPFC_SLI_REV4, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %1
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @LS_LOOPBACK_MODE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %17
  %25 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %26 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FC_PT2PT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %24
  %32 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %33 = load i32, i32* @Fabric_DID, align 4
  %34 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %32, i32 %33)
  store %struct.lpfc_nodelist* %34, %struct.lpfc_nodelist** %6, align 8
  %35 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %36 = icmp ne %struct.lpfc_nodelist* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %39 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37, %31
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %138

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %24, %17, %1
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %47 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.TYPE_6__* @mempool_alloc(i32 %48, i32 %49)
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %5, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = icmp ne %struct.TYPE_6__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %138

56:                                               ; preds = %45
  %57 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %58 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @FC_FABRIC, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %56
  %64 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %65 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @FC_PT2PT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %63, %56
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call %struct.lpfc_dmabuf* @kzalloc(i32 16, i32 %71)
  store %struct.lpfc_dmabuf* %72, %struct.lpfc_dmabuf** %7, align 8
  %73 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %74 = icmp ne %struct.lpfc_dmabuf* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %8, align 4
  br label %138

78:                                               ; preds = %70
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %80 = load i32, i32* @MEM_PRI, align 4
  %81 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %82 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %81, i32 0, i32 0
  %83 = call i64 @lpfc_mbuf_alloc(%struct.lpfc_hba* %79, i32 %80, i32* %82)
  %84 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %85 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %87 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %78
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %8, align 4
  br label %138

93:                                               ; preds = %78
  %94 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %95 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %98 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %97, i32 0, i32 3
  %99 = call i32 @memcpy(i64 %96, i32* %98, i32 4)
  br label %100

100:                                              ; preds = %93, %63
  %101 = load i32, i32* @LPFC_FABRIC_CFG_LINK, align 4
  %102 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %103 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %105 = icmp ne %struct.lpfc_dmabuf* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %108 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %109 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %110 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @lpfc_reg_vfi(%struct.TYPE_6__* %107, %struct.lpfc_vport* %108, i32 %111)
  br label %117

113:                                              ; preds = %100
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %115 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %116 = call i32 @lpfc_reg_vfi(%struct.TYPE_6__* %114, %struct.lpfc_vport* %115, i32 0)
  br label %117

117:                                              ; preds = %113, %106
  %118 = load i32, i32* @lpfc_mbx_cmpl_reg_vfi, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  store %struct.lpfc_vport* %121, %struct.lpfc_vport** %123, align 8
  %124 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  store %struct.lpfc_dmabuf* %124, %struct.lpfc_dmabuf** %126, align 8
  %127 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %129 = load i32, i32* @MBX_NOWAIT, align 4
  %130 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %127, %struct.TYPE_6__* %128, i32 %129)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %117
  %135 = load i32, i32* @ENXIO, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %8, align 4
  br label %138

137:                                              ; preds = %117
  store i32 0, i32* %2, align 4
  br label %177

138:                                              ; preds = %134, %90, %75, %53, %41
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %140 = icmp ne %struct.TYPE_6__* %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %143 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %144 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @mempool_free(%struct.TYPE_6__* %142, i32 %145)
  br label %147

147:                                              ; preds = %141, %138
  %148 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %149 = icmp ne %struct.lpfc_dmabuf* %148, null
  br i1 %149, label %150, label %167

150:                                              ; preds = %147
  %151 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %152 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %150
  %156 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %157 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %158 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %161 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %156, i64 %159, i32 %162)
  br label %164

164:                                              ; preds = %155, %150
  %165 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %166 = call i32 @kfree(%struct.lpfc_dmabuf* %165)
  br label %167

167:                                              ; preds = %164, %147
  %168 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %169 = load i32, i32* @FC_VPORT_FAILED, align 4
  %170 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %168, i32 %169)
  %171 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %172 = load i32, i32* @KERN_ERR, align 4
  %173 = load i32, i32* @LOG_ELS, align 4
  %174 = load i32, i32* %8, align 4
  %175 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %171, i32 %172, i32 %173, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* %8, align 4
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %167, %137
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.TYPE_6__* @mempool_alloc(i32, i32) #1

declare dso_local %struct.lpfc_dmabuf* @kzalloc(i32, i32) #1

declare dso_local i64 @lpfc_mbuf_alloc(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @lpfc_reg_vfi(%struct.TYPE_6__*, %struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i64, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_vport_set_state(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
