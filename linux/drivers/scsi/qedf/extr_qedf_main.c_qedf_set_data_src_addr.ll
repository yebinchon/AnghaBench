; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_set_data_src_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_set_data_src_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { i8**, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_frame_header = type { i8** }
%struct.TYPE_6__ = type { i8** }

@QEDF_FCOE_MAC_METHOD_GRANGED_MAC = common dso_local global i32 0, align 4
@QEDF_FCOE_MAC_METHOD_FCF_MAP = common dso_local global i32 0, align 4
@QEDF_FCOE_MAC_METHOD_FCOE_SET_MAC = common dso_local global i32 0, align 4
@QEDF_LOG_DISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"QEDF data_src_mac=%pM method=%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedf_ctx*, %struct.fc_frame*)* @qedf_set_data_src_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedf_set_data_src_addr(%struct.qedf_ctx* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.qedf_ctx*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.fc_frame_header*, align 8
  %7 = alloca [3 x i8*], align 16
  %8 = alloca i32, align 4
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  %9 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %10 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %9)
  store %struct.fc_frame_header* %10, %struct.fc_frame_header** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %12 = call %struct.TYPE_6__* @fr_cb(%struct.fc_frame* %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  store i8** %14, i8*** %5, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @is_zero_ether_addr(i8** %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %19, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @ether_addr_copy(i8** %21, i8** %22)
  %24 = load i32, i32* @QEDF_FCOE_MAC_METHOD_GRANGED_MAC, align 4
  store i32 %24, i32* %8, align 4
  br label %98

25:                                               ; preds = %2
  %26 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %88

33:                                               ; preds = %25
  %34 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %35 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @hton24(i8** %34, i32 %40)
  %42 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %43 = load i8*, i8** %42, align 16
  %44 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  store i8* %43, i8** %47, align 8
  %48 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 1
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %51 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  store i8* %49, i8** %53, align 8
  %54 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 2
  %55 = load i8*, i8** %54, align 16
  %56 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %57 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %56, i32 0, i32 0
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 2
  store i8* %55, i8** %59, align 8
  %60 = load %struct.fc_frame_header*, %struct.fc_frame_header** %6, align 8
  %61 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %60, i32 0, i32 0
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %66 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 3
  store i8* %64, i8** %68, align 8
  %69 = load %struct.fc_frame_header*, %struct.fc_frame_header** %6, align 8
  %70 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %69, i32 0, i32 0
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %75 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %74, i32 0, i32 0
  %76 = load i8**, i8*** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 4
  store i8* %73, i8** %77, align 8
  %78 = load %struct.fc_frame_header*, %struct.fc_frame_header** %6, align 8
  %79 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %78, i32 0, i32 0
  %80 = load i8**, i8*** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 2
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %84 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %83, i32 0, i32 0
  %85 = load i8**, i8*** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 5
  store i8* %82, i8** %86, align 8
  %87 = load i32, i32* @QEDF_FCOE_MAC_METHOD_FCF_MAP, align 4
  store i32 %87, i32* %8, align 4
  br label %97

88:                                               ; preds = %25
  %89 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %90 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %89, i32 0, i32 0
  %91 = load i8**, i8*** %90, align 8
  %92 = load %struct.fc_frame_header*, %struct.fc_frame_header** %6, align 8
  %93 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %92, i32 0, i32 0
  %94 = load i8**, i8*** %93, align 8
  %95 = call i32 @fc_fcoe_set_mac(i8** %91, i8** %94)
  %96 = load i32, i32* @QEDF_FCOE_MAC_METHOD_FCOE_SET_MAC, align 4
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %88, %33
  br label %98

98:                                               ; preds = %97, %18
  %99 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %100 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %99, i32 0, i32 1
  %101 = load i32, i32* @QEDF_LOG_DISC, align 4
  %102 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %103 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %102, i32 0, i32 0
  %104 = load i8**, i8*** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @QEDF_INFO(i32* %100, i32 %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8** %104, i32 %105)
  ret void
}

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local %struct.TYPE_6__* @fr_cb(%struct.fc_frame*) #1

declare dso_local i32 @is_zero_ether_addr(i8**) #1

declare dso_local i32 @ether_addr_copy(i8**, i8**) #1

declare dso_local i32 @hton24(i8**, i32) #1

declare dso_local i32 @fc_fcoe_set_mac(i8**, i8**) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
