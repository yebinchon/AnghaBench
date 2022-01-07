; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_acpiphp_ibm.c_ibm_slot_from_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_acpiphp_ibm.c_ibm_slot_from_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.apci_descriptor = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"aPCI\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.apci_descriptor* (i32)* @ibm_slot_from_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.apci_descriptor* @ibm_slot_from_id(i32 %0) #0 {
  %2 = alloca %union.apci_descriptor*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.apci_descriptor*, align 8
  %7 = alloca %union.apci_descriptor*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store %union.apci_descriptor* null, %union.apci_descriptor** %6, align 8
  %9 = call i32 @ibm_get_table_from_acpi(i8** %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %union.apci_descriptor* null, %union.apci_descriptor** %2, align 8
  br label %101

13:                                               ; preds = %1
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %union.apci_descriptor*
  store %union.apci_descriptor* %15, %union.apci_descriptor** %7, align 8
  %16 = load %union.apci_descriptor*, %union.apci_descriptor** %7, align 8
  %17 = bitcast %union.apci_descriptor* %16 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @memcmp(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %84

23:                                               ; preds = %13
  %24 = load i8*, i8** %8, align 8
  %25 = load %union.apci_descriptor*, %union.apci_descriptor** %7, align 8
  %26 = bitcast %union.apci_descriptor* %25 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %24, i64 %33
  %35 = bitcast i8* %34 to %union.apci_descriptor*
  store %union.apci_descriptor* %35, %union.apci_descriptor** %7, align 8
  br label %36

36:                                               ; preds = %57, %23
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load %union.apci_descriptor*, %union.apci_descriptor** %7, align 8
  %42 = bitcast %union.apci_descriptor* %41 to %struct.TYPE_5__*
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 130
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = load %union.apci_descriptor*, %union.apci_descriptor** %7, align 8
  %48 = bitcast %union.apci_descriptor* %47 to %struct.TYPE_6__*
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %50, %51
  br label %53

53:                                               ; preds = %46, %40
  %54 = phi i1 [ true, %40 ], [ %52, %46 ]
  br label %55

55:                                               ; preds = %53, %36
  %56 = phi i1 [ false, %36 ], [ %54, %53 ]
  br i1 %56, label %57, label %70

57:                                               ; preds = %55
  %58 = load i8*, i8** %8, align 8
  %59 = load %union.apci_descriptor*, %union.apci_descriptor** %7, align 8
  %60 = bitcast %union.apci_descriptor* %59 to %struct.TYPE_5__*
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %58, i64 %67
  %69 = bitcast i8* %68 to %union.apci_descriptor*
  store %union.apci_descriptor* %69, %union.apci_descriptor** %7, align 8
  br label %36

70:                                               ; preds = %55
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load %union.apci_descriptor*, %union.apci_descriptor** %7, align 8
  %76 = bitcast %union.apci_descriptor* %75 to %struct.TYPE_6__*
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load %union.apci_descriptor*, %union.apci_descriptor** %7, align 8
  store %union.apci_descriptor* %82, %union.apci_descriptor** %6, align 8
  br label %83

83:                                               ; preds = %81, %74, %70
  br label %84

84:                                               ; preds = %83, %22
  %85 = load %union.apci_descriptor*, %union.apci_descriptor** %6, align 8
  %86 = icmp ne %union.apci_descriptor* %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call %union.apci_descriptor* @kmalloc(i32 16, i32 %88)
  store %union.apci_descriptor* %89, %union.apci_descriptor** %6, align 8
  %90 = load %union.apci_descriptor*, %union.apci_descriptor** %6, align 8
  %91 = icmp ne %union.apci_descriptor* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %union.apci_descriptor*, %union.apci_descriptor** %6, align 8
  %94 = load %union.apci_descriptor*, %union.apci_descriptor** %7, align 8
  %95 = call i32 @memcpy(%union.apci_descriptor* %93, %union.apci_descriptor* %94, i32 16)
  br label %96

96:                                               ; preds = %92, %87
  br label %97

97:                                               ; preds = %96, %84
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 @kfree(i8* %98)
  %100 = load %union.apci_descriptor*, %union.apci_descriptor** %6, align 8
  store %union.apci_descriptor* %100, %union.apci_descriptor** %2, align 8
  br label %101

101:                                              ; preds = %97, %12
  %102 = load %union.apci_descriptor*, %union.apci_descriptor** %2, align 8
  ret %union.apci_descriptor* %102
}

declare dso_local i32 @ibm_get_table_from_acpi(i8**) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local %union.apci_descriptor* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%union.apci_descriptor*, %union.apci_descriptor*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
