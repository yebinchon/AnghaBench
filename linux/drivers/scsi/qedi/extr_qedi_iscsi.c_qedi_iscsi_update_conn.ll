; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_iscsi_update_conn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_iscsi_update_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, i32, %struct.qed_iscsi_params_update*)* }
%struct.qed_iscsi_params_update = type { i32, i32, i32, i32, i32, i64 }
%struct.qedi_ctx = type { i32, i32 }
%struct.qedi_conn = type { %struct.qedi_endpoint*, %struct.iscsi_cls_conn* }
%struct.qedi_endpoint = type { i32 }
%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32, %struct.TYPE_3__*, i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"memory alloc failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ISCSI_CONN_UPDATE_RAMROD_PARAMS_HD_EN = common dso_local global i32 0, align 4
@ISCSI_CONN_UPDATE_RAMROD_PARAMS_DD_EN = common dso_local global i32 0, align 4
@ISCSI_CONN_UPDATE_RAMROD_PARAMS_INITIAL_R2T = common dso_local global i32 0, align 4
@ISCSI_CONN_UPDATE_RAMROD_PARAMS_IMMEDIATE_DATA = common dso_local global i32 0, align 4
@qedi_ops = common dso_local global %struct.TYPE_4__* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not update connection\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*, %struct.qedi_conn*)* @qedi_iscsi_update_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_iscsi_update_conn(%struct.qedi_ctx* %0, %struct.qedi_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qedi_ctx*, align 8
  %5 = alloca %struct.qedi_conn*, align 8
  %6 = alloca %struct.qed_iscsi_params_update*, align 8
  %7 = alloca %struct.iscsi_cls_conn*, align 8
  %8 = alloca %struct.iscsi_conn*, align 8
  %9 = alloca %struct.qedi_endpoint*, align 8
  %10 = alloca i32, align 4
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %4, align 8
  store %struct.qedi_conn* %1, %struct.qedi_conn** %5, align 8
  %11 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %12 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %11, i32 0, i32 1
  %13 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %12, align 8
  store %struct.iscsi_cls_conn* %13, %struct.iscsi_cls_conn** %7, align 8
  %14 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %15 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %14, i32 0, i32 0
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %15, align 8
  store %struct.iscsi_conn* %16, %struct.iscsi_conn** %8, align 8
  %17 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %18 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %17, i32 0, i32 0
  %19 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %18, align 8
  store %struct.qedi_endpoint* %19, %struct.qedi_endpoint** %9, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.qed_iscsi_params_update* @kzalloc(i32 32, i32 %20)
  store %struct.qed_iscsi_params_update* %21, %struct.qed_iscsi_params_update** %6, align 8
  %22 = load %struct.qed_iscsi_params_update*, %struct.qed_iscsi_params_update** %6, align 8
  %23 = icmp ne %struct.qed_iscsi_params_update* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %25, i32 0, i32 0
  %27 = call i32 @QEDI_ERR(i32* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %133

30:                                               ; preds = %2
  %31 = load %struct.qed_iscsi_params_update*, %struct.qed_iscsi_params_update** %6, align 8
  %32 = getelementptr inbounds %struct.qed_iscsi_params_update, %struct.qed_iscsi_params_update* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %34 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.qed_iscsi_params_update*, %struct.qed_iscsi_params_update** %6, align 8
  %39 = getelementptr inbounds %struct.qed_iscsi_params_update, %struct.qed_iscsi_params_update* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @ISCSI_CONN_UPDATE_RAMROD_PARAMS_HD_EN, align 4
  %42 = call i32 @SET_FIELD(i64 %40, i32 %41, i32 1)
  br label %43

43:                                               ; preds = %37, %30
  %44 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %45 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.qed_iscsi_params_update*, %struct.qed_iscsi_params_update** %6, align 8
  %50 = getelementptr inbounds %struct.qed_iscsi_params_update, %struct.qed_iscsi_params_update* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @ISCSI_CONN_UPDATE_RAMROD_PARAMS_DD_EN, align 4
  %53 = call i32 @SET_FIELD(i64 %51, i32 %52, i32 1)
  br label %54

54:                                               ; preds = %48, %43
  %55 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %56 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.qed_iscsi_params_update*, %struct.qed_iscsi_params_update** %6, align 8
  %63 = getelementptr inbounds %struct.qed_iscsi_params_update, %struct.qed_iscsi_params_update* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @ISCSI_CONN_UPDATE_RAMROD_PARAMS_INITIAL_R2T, align 4
  %66 = call i32 @SET_FIELD(i64 %64, i32 %65, i32 1)
  br label %67

67:                                               ; preds = %61, %54
  %68 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %69 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load %struct.qed_iscsi_params_update*, %struct.qed_iscsi_params_update** %6, align 8
  %76 = getelementptr inbounds %struct.qed_iscsi_params_update, %struct.qed_iscsi_params_update* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @ISCSI_CONN_UPDATE_RAMROD_PARAMS_IMMEDIATE_DATA, align 4
  %79 = call i32 @SET_FIELD(i64 %77, i32 %78, i32 1)
  br label %80

80:                                               ; preds = %74, %67
  %81 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %82 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.qed_iscsi_params_update*, %struct.qed_iscsi_params_update** %6, align 8
  %87 = getelementptr inbounds %struct.qed_iscsi_params_update, %struct.qed_iscsi_params_update* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %89 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.qed_iscsi_params_update*, %struct.qed_iscsi_params_update** %6, align 8
  %92 = getelementptr inbounds %struct.qed_iscsi_params_update, %struct.qed_iscsi_params_update* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %94 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.qed_iscsi_params_update*, %struct.qed_iscsi_params_update** %6, align 8
  %97 = getelementptr inbounds %struct.qed_iscsi_params_update, %struct.qed_iscsi_params_update* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %99 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %98, i32 0, i32 1
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.qed_iscsi_params_update*, %struct.qed_iscsi_params_update** %6, align 8
  %104 = getelementptr inbounds %struct.qed_iscsi_params_update, %struct.qed_iscsi_params_update* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %106 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.qed_iscsi_params_update*, %struct.qed_iscsi_params_update** %6, align 8
  %109 = getelementptr inbounds %struct.qed_iscsi_params_update, %struct.qed_iscsi_params_update* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @qedi_ops, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32 (i32, i32, %struct.qed_iscsi_params_update*)*, i32 (i32, i32, %struct.qed_iscsi_params_update*)** %111, align 8
  %113 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %114 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %9, align 8
  %117 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.qed_iscsi_params_update*, %struct.qed_iscsi_params_update** %6, align 8
  %120 = call i32 %112(i32 %115, i32 %118, %struct.qed_iscsi_params_update* %119)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %80
  %124 = load i32, i32* @ENXIO, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %10, align 4
  %126 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %127 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %126, i32 0, i32 0
  %128 = call i32 @QEDI_ERR(i32* %127, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %129

129:                                              ; preds = %123, %80
  %130 = load %struct.qed_iscsi_params_update*, %struct.qed_iscsi_params_update** %6, align 8
  %131 = call i32 @kfree(%struct.qed_iscsi_params_update* %130)
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %129, %24
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.qed_iscsi_params_update* @kzalloc(i32, i32) #1

declare dso_local i32 @QEDI_ERR(i32*, i8*) #1

declare dso_local i32 @SET_FIELD(i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.qed_iscsi_params_update*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
