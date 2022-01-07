; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/extr_zd1201.c_zd1201_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/extr_zd1201.c_zd1201_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd1201 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8*, i32 }

@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@ZD1201_CNFAUTHENTICATION_OPENSYSTEM = common dso_local global i32 0, align 4
@ZD1201_CNFAUTHENTICATION_SHAREDKEY = common dso_local global i32 0, align 4
@ZD1201_RID_CNFAUTHENTICATION = common dso_local global i32 0, align 4
@ZD1201_RID_CNFDESIREDSSID = common dso_local global i32 0, align 4
@ZD1201_RID_CNFOWNSSID = common dso_local global i32 0, align 4
@ZD1201_RID_CNFOWNMACADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd1201*, i8*, i32)* @zd1201_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1201_join(%struct.zd1201* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zd1201*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.zd1201* %0, %struct.zd1201** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %14 = add nsw i32 %13, 2
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load %struct.zd1201*, %struct.zd1201** %5, align 8
  %19 = call i32 @zd1201_disable(%struct.zd1201* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %98

24:                                               ; preds = %3
  %25 = load i32, i32* @ZD1201_CNFAUTHENTICATION_OPENSYSTEM, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @ZD1201_CNFAUTHENTICATION_SHAREDKEY, align 4
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load %struct.zd1201*, %struct.zd1201** %5, align 8
  %30 = load i32, i32* @ZD1201_RID_CNFAUTHENTICATION, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @zd1201_setconfig16(%struct.zd1201* %29, i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %98

37:                                               ; preds = %24
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @cpu_to_le16(i32 %38)
  %40 = bitcast i8* %17 to i32*
  store i32 %39, i32* %40, align 16
  %41 = getelementptr inbounds i8, i8* %17, i64 2
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @memcpy(i8* %41, i8* %42, i32 %43)
  %45 = load %struct.zd1201*, %struct.zd1201** %5, align 8
  %46 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %37
  %50 = load %struct.zd1201*, %struct.zd1201** %5, align 8
  %51 = load i32, i32* @ZD1201_RID_CNFDESIREDSSID, align 4
  %52 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %53 = add nsw i32 %52, 2
  %54 = call i32 @zd1201_setconfig(%struct.zd1201* %50, i32 %51, i8* %17, i32 %53, i32 1)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %98

59:                                               ; preds = %49
  br label %71

60:                                               ; preds = %37
  %61 = load %struct.zd1201*, %struct.zd1201** %5, align 8
  %62 = load i32, i32* @ZD1201_RID_CNFOWNSSID, align 4
  %63 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %64 = add nsw i32 %63, 2
  %65 = call i32 @zd1201_setconfig(%struct.zd1201* %61, i32 %62, i8* %17, i32 %64, i32 1)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %98

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %59
  %72 = load %struct.zd1201*, %struct.zd1201** %5, align 8
  %73 = load i32, i32* @ZD1201_RID_CNFOWNMACADDR, align 4
  %74 = load %struct.zd1201*, %struct.zd1201** %5, align 8
  %75 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.zd1201*, %struct.zd1201** %5, align 8
  %80 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @zd1201_setconfig(%struct.zd1201* %72, i32 %73, i8* %78, i32 %83, i32 1)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %71
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %98

89:                                               ; preds = %71
  %90 = load %struct.zd1201*, %struct.zd1201** %5, align 8
  %91 = call i32 @zd1201_enable(%struct.zd1201* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %98

96:                                               ; preds = %89
  %97 = call i32 @msleep(i32 100)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %98

98:                                               ; preds = %96, %94, %87, %68, %57, %35, %22
  %99 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zd1201_disable(%struct.zd1201*) #2

declare dso_local i32 @zd1201_setconfig16(%struct.zd1201*, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @zd1201_setconfig(%struct.zd1201*, i32, i8*, i32, i32) #2

declare dso_local i32 @zd1201_enable(%struct.zd1201*) #2

declare dso_local i32 @msleep(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
