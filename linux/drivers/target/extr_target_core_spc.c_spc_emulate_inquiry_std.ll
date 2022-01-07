; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_spc.c_spc_emulate_inquiry_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_spc.c_spc_emulate_inquiry_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { %struct.se_session*, %struct.se_device*, %struct.se_lun* }
%struct.se_session = type { i32, i64 }
%struct.se_device = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 (%struct.se_device*)* }
%struct.se_lun = type { i32 }

@TYPE_TAPE = common dso_local global i64 0, align 8
@TARGET_PROT_DIN_PASS = common dso_local global i32 0, align 4
@TARGET_PROT_DOUT_PASS = common dso_local global i32 0, align 4
@INQUIRY_VENDOR_LEN = common dso_local global i64 0, align 8
@INQUIRY_MODEL_LEN = common dso_local global i64 0, align 8
@INQUIRY_REVISION_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spc_emulate_inquiry_std(%struct.se_cmd* %0, i8* %1) #0 {
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.se_lun*, align 8
  %6 = alloca %struct.se_device*, align 8
  %7 = alloca %struct.se_session*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %8, i32 0, i32 2
  %10 = load %struct.se_lun*, %struct.se_lun** %9, align 8
  store %struct.se_lun* %10, %struct.se_lun** %5, align 8
  %11 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %12 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %11, i32 0, i32 1
  %13 = load %struct.se_device*, %struct.se_device** %12, align 8
  store %struct.se_device* %13, %struct.se_device** %6, align 8
  %14 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %15 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %14, i32 0, i32 0
  %16 = load %struct.se_session*, %struct.se_session** %15, align 8
  store %struct.se_session* %16, %struct.se_session** %7, align 8
  %17 = load %struct.se_device*, %struct.se_device** %6, align 8
  %18 = getelementptr inbounds %struct.se_device, %struct.se_device* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64 (%struct.se_device*)*, i64 (%struct.se_device*)** %20, align 8
  %22 = load %struct.se_device*, %struct.se_device** %6, align 8
  %23 = call i64 %21(%struct.se_device* %22)
  %24 = load i64, i64* @TYPE_TAPE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 -128, i8* %28, align 1
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  store i8 5, i8* %31, align 1
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  store i8 2, i8* %33, align 1
  %34 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @spc_fill_alua_data(%struct.se_lun* %34, i8* %35)
  %37 = load %struct.se_device*, %struct.se_device** %6, align 8
  %38 = getelementptr inbounds %struct.se_device, %struct.se_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %29
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 5
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %46, 8
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %44, align 1
  br label %49

49:                                               ; preds = %42, %29
  %50 = load %struct.se_session*, %struct.se_session** %7, align 8
  %51 = getelementptr inbounds %struct.se_session, %struct.se_session* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @TARGET_PROT_DIN_PASS, align 4
  %54 = load i32, i32* @TARGET_PROT_DOUT_PASS, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %49
  %59 = load %struct.se_device*, %struct.se_device** %6, align 8
  %60 = getelementptr inbounds %struct.se_device, %struct.se_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %58
  %65 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %66 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %65, i32 0, i32 0
  %67 = load %struct.se_session*, %struct.se_session** %66, align 8
  %68 = getelementptr inbounds %struct.se_session, %struct.se_session* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %64, %58
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 5
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = or i32 %75, 1
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %73, align 1
  br label %78

78:                                               ; preds = %71, %64
  br label %79

79:                                               ; preds = %78, %49
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 7
  store i8 2, i8* %81, align 1
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 8
  %84 = load i64, i64* @INQUIRY_VENDOR_LEN, align 8
  %85 = load i64, i64* @INQUIRY_MODEL_LEN, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i64, i64* @INQUIRY_REVISION_LEN, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @memset(i8* %83, i32 32, i64 %88)
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 8
  %92 = load %struct.se_device*, %struct.se_device** %6, align 8
  %93 = getelementptr inbounds %struct.se_device, %struct.se_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.se_device*, %struct.se_device** %6, align 8
  %97 = getelementptr inbounds %struct.se_device, %struct.se_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i64, i64* @INQUIRY_VENDOR_LEN, align 8
  %101 = call i32 @strnlen(i32 %99, i64 %100)
  %102 = call i32 @memcpy(i8* %91, i32 %95, i32 %101)
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 16
  %105 = load %struct.se_device*, %struct.se_device** %6, align 8
  %106 = getelementptr inbounds %struct.se_device, %struct.se_device* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.se_device*, %struct.se_device** %6, align 8
  %110 = getelementptr inbounds %struct.se_device, %struct.se_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* @INQUIRY_MODEL_LEN, align 8
  %114 = call i32 @strnlen(i32 %112, i64 %113)
  %115 = call i32 @memcpy(i8* %104, i32 %108, i32 %114)
  %116 = load i8*, i8** %4, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 32
  %118 = load %struct.se_device*, %struct.se_device** %6, align 8
  %119 = getelementptr inbounds %struct.se_device, %struct.se_device* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.se_device*, %struct.se_device** %6, align 8
  %123 = getelementptr inbounds %struct.se_device, %struct.se_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i64, i64* @INQUIRY_REVISION_LEN, align 8
  %127 = call i32 @strnlen(i32 %125, i64 %126)
  %128 = call i32 @memcpy(i8* %117, i32 %121, i32 %127)
  %129 = load i8*, i8** %4, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 4
  store i8 31, i8* %130, align 1
  ret i32 0
}

declare dso_local i32 @spc_fill_alua_data(%struct.se_lun*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @strnlen(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
