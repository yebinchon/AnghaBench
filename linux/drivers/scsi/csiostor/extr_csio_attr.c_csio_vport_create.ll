; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_attr.c_csio_vport_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_attr.c_csio_vport_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_vport = type { i8*, i8*, i64, i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.csio_lnode = type { %struct.fc_vport* }
%struct.csio_hw = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"vport create failed. Invalid wwnn\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"vport create failed. Invalid wwpn\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"vport create failed. wwpn already exists\0A\00", align 1
@FC_VPORT_INITIALIZING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_vport*, i32)* @csio_vport_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_vport_create(%struct.fc_vport* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fc_vport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.csio_lnode*, align 8
  %8 = alloca %struct.csio_lnode*, align 8
  %9 = alloca %struct.csio_hw*, align 8
  %10 = alloca [8 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.fc_vport* %0, %struct.fc_vport** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.fc_vport*, %struct.fc_vport** %4, align 8
  %13 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %12, i32 0, i32 4
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %6, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %16 = call %struct.csio_lnode* @shost_priv(%struct.Scsi_Host* %15)
  store %struct.csio_lnode* %16, %struct.csio_lnode** %7, align 8
  store %struct.csio_lnode* null, %struct.csio_lnode** %8, align 8
  %17 = load %struct.csio_lnode*, %struct.csio_lnode** %7, align 8
  %18 = call %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode* %17)
  store %struct.csio_hw* %18, %struct.csio_hw** %9, align 8
  store i32 -1, i32* %11, align 4
  %19 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %20 = load %struct.fc_vport*, %struct.fc_vport** %4, align 8
  %21 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %20, i32 0, i32 3
  %22 = load %struct.csio_lnode*, %struct.csio_lnode** %7, align 8
  %23 = call %struct.csio_lnode* @csio_shost_init(%struct.csio_hw* %19, i32* %21, i32 0, %struct.csio_lnode* %22)
  store %struct.csio_lnode* %23, %struct.csio_lnode** %8, align 8
  %24 = load %struct.csio_lnode*, %struct.csio_lnode** %8, align 8
  %25 = icmp ne %struct.csio_lnode* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %121

27:                                               ; preds = %2
  %28 = load %struct.fc_vport*, %struct.fc_vport** %4, align 8
  %29 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = load %struct.fc_vport*, %struct.fc_vport** %4, align 8
  %34 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %37 = call i32 @u64_to_wwn(i8* %35, i32* %36)
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %39 = call i32 @CSIO_VALID_WWN(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = load %struct.csio_lnode*, %struct.csio_lnode** %8, align 8
  %43 = call i32 @csio_ln_err(%struct.csio_lnode* %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %121

44:                                               ; preds = %32
  %45 = load %struct.csio_lnode*, %struct.csio_lnode** %8, align 8
  %46 = call i32 @csio_ln_wwnn(%struct.csio_lnode* %45)
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %48 = call i32 @memcpy(i32 %46, i32* %47, i32 8)
  br label %49

49:                                               ; preds = %44, %27
  %50 = load %struct.fc_vport*, %struct.fc_vport** %4, align 8
  %51 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %79

54:                                               ; preds = %49
  %55 = load %struct.fc_vport*, %struct.fc_vport** %4, align 8
  %56 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %59 = call i32 @u64_to_wwn(i8* %57, i32* %58)
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %61 = call i32 @CSIO_VALID_WWN(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %54
  %64 = load %struct.csio_lnode*, %struct.csio_lnode** %8, align 8
  %65 = call i32 @csio_ln_err(%struct.csio_lnode* %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %121

66:                                               ; preds = %54
  %67 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %69 = call i64 @csio_lnode_lookup_by_wwpn(%struct.csio_hw* %67, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.csio_lnode*, %struct.csio_lnode** %8, align 8
  %73 = call i32 @csio_ln_err(%struct.csio_lnode* %72, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %121

74:                                               ; preds = %66
  %75 = load %struct.csio_lnode*, %struct.csio_lnode** %8, align 8
  %76 = call i32 @csio_ln_wwpn(%struct.csio_lnode* %75)
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %78 = call i32 @memcpy(i32 %76, i32* %77, i32 8)
  br label %79

79:                                               ; preds = %74, %49
  %80 = load %struct.fc_vport*, %struct.fc_vport** %4, align 8
  %81 = load i32, i32* @FC_VPORT_INITIALIZING, align 4
  %82 = call i32 @fc_vport_set_state(%struct.fc_vport* %80, i32 %81)
  %83 = load %struct.fc_vport*, %struct.fc_vport** %4, align 8
  %84 = load %struct.csio_lnode*, %struct.csio_lnode** %8, align 8
  %85 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %84, i32 0, i32 0
  store %struct.fc_vport* %83, %struct.fc_vport** %85, align 8
  %86 = load %struct.csio_hw*, %struct.csio_hw** %9, align 8
  %87 = load %struct.csio_lnode*, %struct.csio_lnode** %8, align 8
  %88 = call i64 @csio_fcoe_alloc_vnp(%struct.csio_hw* %86, %struct.csio_lnode* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %121

91:                                               ; preds = %79
  %92 = load %struct.csio_lnode*, %struct.csio_lnode** %8, align 8
  %93 = load %struct.fc_vport*, %struct.fc_vport** %4, align 8
  %94 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to %struct.csio_lnode**
  store %struct.csio_lnode* %92, %struct.csio_lnode** %96, align 8
  %97 = load %struct.fc_vport*, %struct.fc_vport** %4, align 8
  %98 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %91
  %102 = load %struct.csio_lnode*, %struct.csio_lnode** %8, align 8
  %103 = call i32 @csio_ln_wwnn(%struct.csio_lnode* %102)
  %104 = call i8* @wwn_to_u64(i32 %103)
  %105 = load %struct.fc_vport*, %struct.fc_vport** %4, align 8
  %106 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %101, %91
  %108 = load %struct.fc_vport*, %struct.fc_vport** %4, align 8
  %109 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %118, label %112

112:                                              ; preds = %107
  %113 = load %struct.csio_lnode*, %struct.csio_lnode** %8, align 8
  %114 = call i32 @csio_ln_wwpn(%struct.csio_lnode* %113)
  %115 = call i8* @wwn_to_u64(i32 %114)
  %116 = load %struct.fc_vport*, %struct.fc_vport** %4, align 8
  %117 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  br label %118

118:                                              ; preds = %112, %107
  %119 = load %struct.csio_lnode*, %struct.csio_lnode** %8, align 8
  %120 = call i32 @csio_fchost_attr_init(%struct.csio_lnode* %119)
  store i32 0, i32* %3, align 4
  br label %129

121:                                              ; preds = %90, %71, %63, %41, %26
  %122 = load %struct.csio_lnode*, %struct.csio_lnode** %8, align 8
  %123 = icmp ne %struct.csio_lnode* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load %struct.csio_lnode*, %struct.csio_lnode** %8, align 8
  %126 = call i32 @csio_shost_exit(%struct.csio_lnode* %125)
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i32, i32* %11, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %118
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.csio_lnode* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode*) #1

declare dso_local %struct.csio_lnode* @csio_shost_init(%struct.csio_hw*, i32*, i32, %struct.csio_lnode*) #1

declare dso_local i32 @u64_to_wwn(i8*, i32*) #1

declare dso_local i32 @CSIO_VALID_WWN(i32*) #1

declare dso_local i32 @csio_ln_err(%struct.csio_lnode*, i8*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @csio_ln_wwnn(%struct.csio_lnode*) #1

declare dso_local i64 @csio_lnode_lookup_by_wwpn(%struct.csio_hw*, i32*) #1

declare dso_local i32 @csio_ln_wwpn(%struct.csio_lnode*) #1

declare dso_local i32 @fc_vport_set_state(%struct.fc_vport*, i32) #1

declare dso_local i64 @csio_fcoe_alloc_vnp(%struct.csio_hw*, %struct.csio_lnode*) #1

declare dso_local i8* @wwn_to_u64(i32) #1

declare dso_local i32 @csio_fchost_attr_init(%struct.csio_lnode*) #1

declare dso_local i32 @csio_shost_exit(%struct.csio_lnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
