; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_i2c.c_st21nfca_hci_platform_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_i2c.c_st21nfca_hci_platform_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st21nfca_i2c_phy = type { i32 }

@__const.st21nfca_hci_platform_init.wait_reboot = private unnamed_addr constant [3 x i32] [i32 50, i32 300, i32 1000], align 4
@__const.st21nfca_hci_platform_init.reboot_cmd = private unnamed_addr constant [5 x i8] c"~fH\F6~", align 1
@ST21NFCA_HCI_LLC_MAX_SIZE = common dso_local global i32 0, align 4
@ST21NFCA_SOF_EOF = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st21nfca_i2c_phy*)* @st21nfca_hci_platform_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st21nfca_hci_platform_init(%struct.st21nfca_i2c_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st21nfca_i2c_phy*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca [5 x i8], align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.st21nfca_i2c_phy* %0, %struct.st21nfca_i2c_phy** %3, align 8
  %11 = bitcast [3 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast ([3 x i32]* @__const.st21nfca_hci_platform_init.wait_reboot to i8*), i64 12, i1 false)
  %12 = bitcast [5 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.st21nfca_hci_platform_init.reboot_cmd, i32 0, i32 0), i64 5, i1 false)
  %13 = load i32, i32* @ST21NFCA_HCI_LLC_MAX_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i64, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %42, %1
  %18 = load i32, i32* %8, align 4
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %20 = call i32 @ARRAY_SIZE(i32* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi i1 [ false, %17 ], [ %24, %22 ]
  br i1 %26, label %27, label %45

27:                                               ; preds = %25
  %28 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %3, align 8
  %29 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %32 = call i32 @i2c_master_send(i32 %30, i8* %31, i32 5)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @msleep(i32 %39)
  br label %41

41:                                               ; preds = %35, %27
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %17

45:                                               ; preds = %25
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %112

50:                                               ; preds = %45
  %51 = call i32 @msleep(i32 20)
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %77, %50
  %53 = load i32, i32* %8, align 4
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %55 = call i32 @ARRAY_SIZE(i32* %54)
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br label %60

60:                                               ; preds = %57, %52
  %61 = phi i1 [ false, %52 ], [ %59, %57 ]
  br i1 %61, label %62, label %80

62:                                               ; preds = %60
  %63 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %3, align 8
  %64 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ST21NFCA_HCI_LLC_MAX_SIZE, align 4
  %67 = call i32 @i2c_master_recv(i32 %65, i64* %16, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @msleep(i32 %74)
  br label %76

76:                                               ; preds = %70, %62
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %52

80:                                               ; preds = %60
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %112

85:                                               ; preds = %80
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %100, %85
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @ST21NFCA_HCI_LLC_MAX_SIZE, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %16, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ST21NFCA_SOF_EOF, align 8
  %96 = icmp eq i64 %94, %95
  br label %97

97:                                               ; preds = %90, %86
  %98 = phi i1 [ false, %86 ], [ %96, %90 ]
  br i1 %98, label %99, label %103

99:                                               ; preds = %97
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %86

103:                                              ; preds = %97
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @ST21NFCA_HCI_LLC_MAX_SIZE, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* @ENODEV, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %112

110:                                              ; preds = %103
  %111 = call i32 @usleep_range(i32 1000, i32 1500)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %112

112:                                              ; preds = %110, %107, %83, %48
  %113 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ARRAY_SIZE(i32*) #3

declare dso_local i32 @i2c_master_send(i32, i8*, i32) #3

declare dso_local i32 @msleep(i32) #3

declare dso_local i32 @i2c_master_recv(i32, i64*, i32) #3

declare dso_local i32 @usleep_range(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
