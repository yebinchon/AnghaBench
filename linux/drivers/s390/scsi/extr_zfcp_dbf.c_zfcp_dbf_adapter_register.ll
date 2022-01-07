; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_adapter_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_adapter_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { %struct.zfcp_dbf*, %struct.TYPE_2__* }
%struct.zfcp_dbf = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@DEBUG_MAX_NAME_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"zfcp_%s_rec\00", align 1
@dbfsize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"zfcp_%s_hba\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"zfcp_%s_pay\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"zfcp_%s_san\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"zfcp_%s_scsi\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_dbf_adapter_register(%struct.zfcp_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.zfcp_dbf*, align 8
  %7 = alloca i32, align 4
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %3, align 8
  %8 = load i32, i32* @DEBUG_MAX_NAME_LEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.zfcp_dbf* @kzalloc(i32 64, i32 %12)
  store %struct.zfcp_dbf* %13, %struct.zfcp_dbf** %6, align 8
  %14 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %15 = icmp ne %struct.zfcp_dbf* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %124

19:                                               ; preds = %1
  %20 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %21 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %20, i32 0, i32 9
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %24 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %23, i32 0, i32 8
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %27 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %26, i32 0, i32 7
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %30 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %29, i32 0, i32 6
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %33 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %32, i32 0, i32 5
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i8* @dev_name(i32* %38)
  %40 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @dbfsize, align 4
  %42 = call i8* @zfcp_dbf_reg(i8* %11, i32 %41, i32 4)
  %43 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %44 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %46 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %45, i32 0, i32 4
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %19
  br label %119

50:                                               ; preds = %19
  %51 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i8* @dev_name(i32* %54)
  %56 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* @dbfsize, align 4
  %58 = call i8* @zfcp_dbf_reg(i8* %11, i32 %57, i32 4)
  %59 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %60 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %62 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %61, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %50
  br label %119

66:                                               ; preds = %50
  %67 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %68 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i8* @dev_name(i32* %70)
  %72 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  %73 = load i32, i32* @dbfsize, align 4
  %74 = mul nsw i32 %73, 2
  %75 = call i8* @zfcp_dbf_reg(i8* %11, i32 %74, i32 4)
  %76 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %77 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %79 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %66
  br label %119

83:                                               ; preds = %66
  %84 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %85 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = call i8* @dev_name(i32* %87)
  %89 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* @dbfsize, align 4
  %91 = call i8* @zfcp_dbf_reg(i8* %11, i32 %90, i32 4)
  %92 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %93 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %95 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %83
  br label %119

99:                                               ; preds = %83
  %100 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %101 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = call i8* @dev_name(i32* %103)
  %105 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %104)
  %106 = load i32, i32* @dbfsize, align 4
  %107 = call i8* @zfcp_dbf_reg(i8* %11, i32 %106, i32 4)
  %108 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %109 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  %110 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %111 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %99
  br label %119

115:                                              ; preds = %99
  %116 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %117 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %118 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %117, i32 0, i32 0
  store %struct.zfcp_dbf* %116, %struct.zfcp_dbf** %118, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %124

119:                                              ; preds = %114, %98, %82, %65, %49
  %120 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %121 = call i32 @zfcp_dbf_unregister(%struct.zfcp_dbf* %120)
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %124

124:                                              ; preds = %119, %115, %16
  %125 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.zfcp_dbf* @kzalloc(i32, i32) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i8* @dev_name(i32*) #2

declare dso_local i8* @zfcp_dbf_reg(i8*, i32, i32) #2

declare dso_local i32 @zfcp_dbf_unregister(%struct.zfcp_dbf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
