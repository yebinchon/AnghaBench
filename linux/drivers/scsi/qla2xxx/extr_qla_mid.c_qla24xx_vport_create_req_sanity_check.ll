; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mid.c_qla24xx_vport_create_req_sanity_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mid.c_qla24xx_vport_create_req_sanity_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_vport = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@WWN_SIZE = common dso_local global i32 0, align 4
@FC_PORT_ROLE_FCP_INITIATOR = common dso_local global i64 0, align 8
@VPCERR_UNSUPPORTED = common dso_local global i32 0, align 4
@FLOGI_MID_SUPPORT = common dso_local global i32 0, align 4
@VPCERR_NO_FABRIC_SUPP = common dso_local global i32 0, align 4
@VPCERR_BAD_WWN = common dso_local global i32 0, align 4
@ql_dbg_vport = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"num_vhosts %ud is bigger than max_npiv_vports %ud.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_vport_create_req_sanity_check(%struct.fc_vport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_vport*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.fc_vport* %0, %struct.fc_vport** %3, align 8
  %10 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %11 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_7__* @shost_priv(i32 %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %4, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  store %struct.qla_hw_data* %16, %struct.qla_hw_data** %5, align 8
  %17 = load i32, i32* @WWN_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %22 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FC_PORT_ROLE_FCP_INITIATOR, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @VPCERR_UNSUPPORTED, align 4
  store i32 %27, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %85

28:                                               ; preds = %1
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %30 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @VPCERR_UNSUPPORTED, align 4
  store i32 %35, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %85

36:                                               ; preds = %28
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %38 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @FLOGI_MID_SUPPORT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @VPCERR_NO_FABRIC_SUPP, align 4
  store i32 %44, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %85

45:                                               ; preds = %36
  %46 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %47 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @u64_to_wwn(i32 %48, i32* %20)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @WWN_SIZE, align 4
  %54 = call i32 @memcmp(i32* %20, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %45
  %57 = load i32, i32* @VPCERR_BAD_WWN, align 4
  store i32 %57, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %85

58:                                               ; preds = %45
  %59 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %60 = call %struct.TYPE_7__* @qla24xx_find_vhost_by_name(%struct.qla_hw_data* %59, i32* %20)
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** %6, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = icmp ne %struct.TYPE_7__* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @VPCERR_BAD_WWN, align 4
  store i32 %64, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %85

65:                                               ; preds = %58
  %66 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %67 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %70 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %65
  %74 = load i32, i32* @ql_dbg_vport, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %77 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %80 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @ql_dbg(i32 %74, %struct.TYPE_7__* %75, i32 40964, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %78, i64 %81)
  %83 = load i32, i32* @VPCERR_UNSUPPORTED, align 4
  store i32 %83, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %85

84:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %85

85:                                               ; preds = %84, %73, %63, %56, %43, %34, %26
  %86 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.TYPE_7__* @shost_priv(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @u64_to_wwn(i32, i32*) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @qla24xx_find_vhost_by_name(%struct.qla_hw_data*, i32*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_7__*, i32, i8*, i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
