; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_gspn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_gspn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.zfcp_fc_req = type { i32, i32, %struct.TYPE_8__, %struct.zfcp_fsf_ct_els }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.zfcp_fc_gspn_rsp, %struct.zfcp_fc_gspn_rsp }
%struct.zfcp_fc_gspn_rsp = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i8*, i32 }
%struct.zfcp_fsf_ct_els = type { i32, i32*, i32*, i32*, i32 }
%struct.zfcp_fc_gspn_req = type { %struct.TYPE_11__, i32 }
%struct.TYPE_12__ = type { i32 }

@completion = common dso_local global i32 0, align 4
@__const.zfcp_fc_gspn.devno = private unnamed_addr constant [7 x i8] c"DEVNO:\00", align 1
@FC_NS_GSPN_ID = common dso_local global i32 0, align 4
@FC_SYMBOLIC_NAME_SIZE = common dso_local global i32 0, align 4
@zfcp_fc_complete = common dso_local global i32 0, align 4
@ZFCP_FC_CTELS_TMO = common dso_local global i32 0, align 4
@FC_PORTTYPE_NPIV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s%s %s NAME: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_adapter*, %struct.zfcp_fc_req*)* @zfcp_fc_gspn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_fc_gspn(%struct.zfcp_adapter* %0, %struct.zfcp_fc_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zfcp_adapter*, align 8
  %5 = alloca %struct.zfcp_fc_req*, align 8
  %6 = alloca [7 x i8], align 1
  %7 = alloca %struct.zfcp_fsf_ct_els*, align 8
  %8 = alloca %struct.zfcp_fc_gspn_req*, align 8
  %9 = alloca %struct.zfcp_fc_gspn_rsp*, align 8
  %10 = alloca i32, align 4
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %4, align 8
  store %struct.zfcp_fc_req* %1, %struct.zfcp_fc_req** %5, align 8
  %11 = load i32, i32* @completion, align 4
  %12 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %11)
  %13 = bitcast [7 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.zfcp_fc_gspn.devno, i32 0, i32 0), i64 7, i1 false)
  %14 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %5, align 8
  %15 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %14, i32 0, i32 3
  store %struct.zfcp_fsf_ct_els* %15, %struct.zfcp_fsf_ct_els** %7, align 8
  %16 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %5, align 8
  %17 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = bitcast %struct.zfcp_fc_gspn_rsp* %19 to %struct.zfcp_fc_gspn_req*
  store %struct.zfcp_fc_gspn_req* %20, %struct.zfcp_fc_gspn_req** %8, align 8
  %21 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %5, align 8
  %22 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store %struct.zfcp_fc_gspn_rsp* %24, %struct.zfcp_fc_gspn_rsp** %9, align 8
  %25 = load %struct.zfcp_fc_gspn_req*, %struct.zfcp_fc_gspn_req** %8, align 8
  %26 = getelementptr inbounds %struct.zfcp_fc_gspn_req, %struct.zfcp_fc_gspn_req* %25, i32 0, i32 1
  %27 = load i32, i32* @FC_NS_GSPN_ID, align 4
  %28 = load i32, i32* @FC_SYMBOLIC_NAME_SIZE, align 4
  %29 = call i32 @zfcp_fc_ct_ns_init(i32* %26, i32 %27, i32 %28)
  %30 = load %struct.zfcp_fc_gspn_req*, %struct.zfcp_fc_gspn_req** %8, align 8
  %31 = getelementptr inbounds %struct.zfcp_fc_gspn_req, %struct.zfcp_fc_gspn_req* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %35 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @fc_host_port_id(i32 %36)
  %38 = call i32 @hton24(i32 %33, i32 %37)
  %39 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %5, align 8
  %40 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %39, i32 0, i32 1
  %41 = load %struct.zfcp_fc_gspn_req*, %struct.zfcp_fc_gspn_req** %8, align 8
  %42 = bitcast %struct.zfcp_fc_gspn_req* %41 to %struct.zfcp_fc_gspn_rsp*
  %43 = call i32 @sg_init_one(i32* %40, %struct.zfcp_fc_gspn_rsp* %42, i32 24)
  %44 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %5, align 8
  %45 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %44, i32 0, i32 0
  %46 = load %struct.zfcp_fc_gspn_rsp*, %struct.zfcp_fc_gspn_rsp** %9, align 8
  %47 = call i32 @sg_init_one(i32* %45, %struct.zfcp_fc_gspn_rsp* %46, i32 24)
  %48 = load i32, i32* @zfcp_fc_complete, align 4
  %49 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %7, align 8
  %50 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %7, align 8
  %52 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %51, i32 0, i32 3
  store i32* @completion, i32** %52, align 8
  %53 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %5, align 8
  %54 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %53, i32 0, i32 1
  %55 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %7, align 8
  %56 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %55, i32 0, i32 2
  store i32* %54, i32** %56, align 8
  %57 = load %struct.zfcp_fc_req*, %struct.zfcp_fc_req** %5, align 8
  %58 = getelementptr inbounds %struct.zfcp_fc_req, %struct.zfcp_fc_req* %57, i32 0, i32 0
  %59 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %7, align 8
  %60 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %59, i32 0, i32 1
  store i32* %58, i32** %60, align 8
  %61 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %62 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %61, i32 0, i32 2
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %7, align 8
  %66 = load i32, i32* @ZFCP_FC_CTELS_TMO, align 4
  %67 = call i32 @zfcp_fsf_send_ct(i32* %64, %struct.zfcp_fsf_ct_els* %65, i32* null, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %2
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %3, align 4
  br label %129

72:                                               ; preds = %2
  %73 = call i32 @wait_for_completion(i32* @completion)
  %74 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %7, align 8
  %75 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.zfcp_fsf_ct_els*, %struct.zfcp_fsf_ct_els** %7, align 8
  %80 = getelementptr inbounds %struct.zfcp_fsf_ct_els, %struct.zfcp_fsf_ct_els* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %3, align 4
  br label %129

82:                                               ; preds = %72
  %83 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %84 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @fc_host_port_type(i32 %85)
  %87 = load i64, i64* @FC_PORTTYPE_NPIV, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %117

89:                                               ; preds = %82
  %90 = load %struct.zfcp_fc_gspn_rsp*, %struct.zfcp_fc_gspn_rsp** %9, align 8
  %91 = getelementptr inbounds %struct.zfcp_fc_gspn_rsp, %struct.zfcp_fc_gspn_rsp* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %95 = call i32 @strstr(i8* %93, i8* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %117, label %97

97:                                               ; preds = %89
  %98 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %99 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @fc_host_symbolic_name(i32 %100)
  %102 = load i32, i32* @FC_SYMBOLIC_NAME_SIZE, align 4
  %103 = load %struct.zfcp_fc_gspn_rsp*, %struct.zfcp_fc_gspn_rsp** %9, align 8
  %104 = getelementptr inbounds %struct.zfcp_fc_gspn_rsp, %struct.zfcp_fc_gspn_rsp* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %108 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %109 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %108, i32 0, i32 1
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = call i8* @dev_name(i32* %111)
  %113 = call %struct.TYPE_12__* (...) @init_utsname()
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @snprintf(i32 %101, i32 %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %106, i8* %107, i8* %112, i32 %115)
  br label %128

117:                                              ; preds = %89, %82
  %118 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %119 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @fc_host_symbolic_name(i32 %120)
  %122 = load %struct.zfcp_fc_gspn_rsp*, %struct.zfcp_fc_gspn_rsp** %9, align 8
  %123 = getelementptr inbounds %struct.zfcp_fc_gspn_rsp, %struct.zfcp_fc_gspn_rsp* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* @FC_SYMBOLIC_NAME_SIZE, align 4
  %127 = call i32 @strlcpy(i32 %121, i8* %125, i32 %126)
  br label %128

128:                                              ; preds = %117, %97
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %128, %78, %70
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @zfcp_fc_ct_ns_init(i32*, i32, i32) #1

declare dso_local i32 @hton24(i32, i32) #1

declare dso_local i32 @fc_host_port_id(i32) #1

declare dso_local i32 @sg_init_one(i32*, %struct.zfcp_fc_gspn_rsp*, i32) #1

declare dso_local i32 @zfcp_fsf_send_ct(i32*, %struct.zfcp_fsf_ct_els*, i32*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i64 @fc_host_port_type(i32) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @fc_host_symbolic_name(i32) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local %struct.TYPE_12__* @init_utsname(...) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
