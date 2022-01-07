; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_rave-sp-eeprom.c_rave_sp_eeprom_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_rave-sp-eeprom.c_rave_sp_eeprom_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rave_sp_eeprom = type { i32, i32, i32 }
%struct.rave_sp_eeprom_page = type { i32, i32, i32 }

@RAVE_SP_EEPROM_WRITE = common dso_local global i32 0, align 4
@RAVE_SP_EEPROM_HEADER_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rave_sp_eeprom*, i32, i32, %struct.rave_sp_eeprom_page*)* @rave_sp_eeprom_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rave_sp_eeprom_io(%struct.rave_sp_eeprom* %0, i32 %1, i32 %2, %struct.rave_sp_eeprom_page* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rave_sp_eeprom*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rave_sp_eeprom_page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.rave_sp_eeprom* %0, %struct.rave_sp_eeprom** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.rave_sp_eeprom_page* %3, %struct.rave_sp_eeprom_page** %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @RAVE_SP_EEPROM_WRITE, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i64 4, i64 0
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %11, align 4
  %28 = load %struct.rave_sp_eeprom*, %struct.rave_sp_eeprom** %6, align 8
  %29 = getelementptr inbounds %struct.rave_sp_eeprom, %struct.rave_sp_eeprom* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %11, align 4
  %32 = add i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i64 8, i64 12
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %38 = load i32, i32* @RAVE_SP_EEPROM_HEADER_MAX, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, 4
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %15, align 8
  %42 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %16, align 8
  %43 = load i32, i32* %12, align 4
  %44 = zext i32 %43 to i64
  %45 = mul nuw i64 4, %40
  %46 = icmp ugt i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @WARN_ON(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %4
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %125

53:                                               ; preds = %4
  %54 = load %struct.rave_sp_eeprom*, %struct.rave_sp_eeprom** %6, align 8
  %55 = getelementptr inbounds %struct.rave_sp_eeprom, %struct.rave_sp_eeprom* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %14, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %14, align 4
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %42, i64 %59
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* %14, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %14, align 4
  %63 = zext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %42, i64 %63
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %14, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %14, align 4
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %42, i64 %68
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %14, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %14, align 4
  %73 = zext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %42, i64 %73
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.rave_sp_eeprom*, %struct.rave_sp_eeprom** %6, align 8
  %77 = getelementptr inbounds %struct.rave_sp_eeprom, %struct.rave_sp_eeprom* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ult i32 %75, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %53
  %81 = load i32, i32* %8, align 4
  %82 = ashr i32 %81, 8
  %83 = load i32, i32* %14, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %14, align 4
  %85 = zext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %42, i64 %85
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %80, %53
  %88 = load i32, i32* %14, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %42, i64 %89
  %91 = load %struct.rave_sp_eeprom_page*, %struct.rave_sp_eeprom_page** %9, align 8
  %92 = getelementptr inbounds %struct.rave_sp_eeprom_page, %struct.rave_sp_eeprom_page* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @memcpy(i32* %90, i32 %93, i32 %94)
  %96 = load %struct.rave_sp_eeprom*, %struct.rave_sp_eeprom** %6, align 8
  %97 = getelementptr inbounds %struct.rave_sp_eeprom, %struct.rave_sp_eeprom* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.rave_sp_eeprom_page*, %struct.rave_sp_eeprom_page** %9, align 8
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @rave_sp_exec(i32 %98, i32* %42, i32 %99, %struct.rave_sp_eeprom_page* %100, i32 %101)
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %17, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %87
  %106 = load i32, i32* %17, align 4
  store i32 %106, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %125

107:                                              ; preds = %87
  %108 = load %struct.rave_sp_eeprom_page*, %struct.rave_sp_eeprom_page** %9, align 8
  %109 = getelementptr inbounds %struct.rave_sp_eeprom_page, %struct.rave_sp_eeprom_page* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load i32, i32* @EPROTO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %125

116:                                              ; preds = %107
  %117 = load %struct.rave_sp_eeprom_page*, %struct.rave_sp_eeprom_page** %9, align 8
  %118 = getelementptr inbounds %struct.rave_sp_eeprom_page, %struct.rave_sp_eeprom_page* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* @EIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %125

124:                                              ; preds = %116
  store i32 0, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %125

125:                                              ; preds = %124, %121, %113, %105, %50
  %126 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %126)
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @rave_sp_exec(i32, i32*, i32, %struct.rave_sp_eeprom_page*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
