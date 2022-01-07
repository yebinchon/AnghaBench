; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rcv_farp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rcv_farp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32 }
%struct.lpfc_iocbq = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.lpfc_nodelist = type { i64, i64, i32 }
%struct.lpfc_dmabuf = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"0601 FARP-REQ received from DID x%x\0A\00", align 1
@FARP_MATCH_NODE = common dso_local global i32 0, align 4
@FARP_MATCH_PORT = common dso_local global i32 0, align 4
@NLP_STE_UNMAPPED_NODE = common dso_local global i64 0, align 8
@NLP_STE_MAPPED_NODE = common dso_local global i64 0, align 8
@FARP_REQUEST_PLOGI = common dso_local global i32 0, align 4
@NLP_STE_PLOGI_ISSUE = common dso_local global i32 0, align 4
@FARP_REQUEST_FARPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*)* @lpfc_els_rcv_farp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_els_rcv_farp(%struct.lpfc_vport* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_nodelist* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.lpfc_dmabuf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %6, align 8
  store %struct.lpfc_nodelist* %2, %struct.lpfc_nodelist** %7, align 8
  %14 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %15 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %14, i32 0, i32 1
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %10, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  %21 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %22 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %24, %struct.lpfc_dmabuf** %8, align 8
  %25 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %26 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = bitcast i32* %31 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %11, align 8
  %33 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %34 = load i32, i32* @KERN_INFO, align 4
  %35 = load i32, i32* @LOG_ELS, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %33, i32 %34, i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FARP_MATCH_NODE, align 4
  %42 = load i32, i32* @FARP_MATCH_PORT, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = and i32 %40, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %131

48:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @FARP_MATCH_PORT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  %58 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %59 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %58, i32 0, i32 1
  %60 = call i64 @memcmp(i32* %57, i32* %59, i32 4)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 1, i32* %12, align 4
  br label %63

63:                                               ; preds = %62, %55
  br label %64

64:                                               ; preds = %63, %48
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @FARP_MATCH_NODE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %75 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %74, i32 0, i32 0
  %76 = call i64 @memcmp(i32* %73, i32* %75, i32 4)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 1, i32* %12, align 4
  br label %79

79:                                               ; preds = %78, %71
  br label %80

80:                                               ; preds = %79, %64
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %130

83:                                               ; preds = %80
  %84 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %85 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NLP_STE_UNMAPPED_NODE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %91 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @NLP_STE_MAPPED_NODE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %129

95:                                               ; preds = %89, %83
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @FARP_REQUEST_PLOGI, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %95
  %103 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %104 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %107 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %109 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %110 = load i32, i32* @NLP_STE_PLOGI_ISSUE, align 4
  %111 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %108, %struct.lpfc_nodelist* %109, i32 %110)
  %112 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %113 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %114 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @lpfc_issue_els_plogi(%struct.lpfc_vport* %112, i32 %115, i32 0)
  br label %117

117:                                              ; preds = %102, %95
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @FARP_REQUEST_FARPR, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @lpfc_issue_els_farpr(%struct.lpfc_vport* %125, i32 %126, i32 0)
  br label %128

128:                                              ; preds = %124, %117
  br label %129

129:                                              ; preds = %128, %89
  br label %130

130:                                              ; preds = %129, %80
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %47
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_plogi(%struct.lpfc_vport*, i32, i32) #1

declare dso_local i32 @lpfc_issue_els_farpr(%struct.lpfc_vport*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
