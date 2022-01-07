; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_constants.c_scsi_opcode_sa_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_constants.c_scsi_opcode_sa_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_name_list = type { i32, i32, %struct.value_name_pair* }
%struct.value_name_pair = type { i32, i8* }

@VENDOR_SPECIFIC_CDB = common dso_local global i32 0, align 4
@cdb_byte0_names = common dso_local global i8** null, align 8
@sa_names_arr = common dso_local global %struct.sa_name_list* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_opcode_sa_name(i32 %0, i32 %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.sa_name_list*, align 8
  %11 = alloca %struct.value_name_pair*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  store %struct.value_name_pair* null, %struct.value_name_pair** %11, align 8
  %14 = load i8**, i8*** %8, align 8
  store i8* null, i8** %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @VENDOR_SPECIFIC_CDB, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %87

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = load i8**, i8*** @cdb_byte0_names, align 8
  %22 = call i32 @ARRAY_SIZE(i8** %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i8**, i8*** @cdb_byte0_names, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = load i8**, i8*** %8, align 8
  store i8* %29, i8** %30, align 8
  br label %31

31:                                               ; preds = %24, %19
  %32 = load %struct.sa_name_list*, %struct.sa_name_list** @sa_names_arr, align 8
  store %struct.sa_name_list* %32, %struct.sa_name_list** %10, align 8
  br label %33

33:                                               ; preds = %52, %31
  %34 = load %struct.sa_name_list*, %struct.sa_name_list** %10, align 8
  %35 = getelementptr inbounds %struct.sa_name_list, %struct.sa_name_list* %34, i32 0, i32 2
  %36 = load %struct.value_name_pair*, %struct.value_name_pair** %35, align 8
  %37 = icmp ne %struct.value_name_pair* %36, null
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load %struct.sa_name_list*, %struct.sa_name_list** %10, align 8
  %40 = getelementptr inbounds %struct.sa_name_list, %struct.sa_name_list* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.sa_name_list*, %struct.sa_name_list** %10, align 8
  %46 = getelementptr inbounds %struct.sa_name_list, %struct.sa_name_list* %45, i32 0, i32 2
  %47 = load %struct.value_name_pair*, %struct.value_name_pair** %46, align 8
  store %struct.value_name_pair* %47, %struct.value_name_pair** %11, align 8
  %48 = load %struct.sa_name_list*, %struct.sa_name_list** %10, align 8
  %49 = getelementptr inbounds %struct.sa_name_list, %struct.sa_name_list* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %12, align 4
  br label %55

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.sa_name_list*, %struct.sa_name_list** %10, align 8
  %54 = getelementptr inbounds %struct.sa_name_list, %struct.sa_name_list* %53, i32 1
  store %struct.sa_name_list* %54, %struct.sa_name_list** %10, align 8
  br label %33

55:                                               ; preds = %44, %33
  %56 = load %struct.value_name_pair*, %struct.value_name_pair** %11, align 8
  %57 = icmp ne %struct.value_name_pair* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %87

59:                                               ; preds = %55
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %72, %59
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.value_name_pair*, %struct.value_name_pair** %11, align 8
  %67 = getelementptr inbounds %struct.value_name_pair, %struct.value_name_pair* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %77

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  %75 = load %struct.value_name_pair*, %struct.value_name_pair** %11, align 8
  %76 = getelementptr inbounds %struct.value_name_pair, %struct.value_name_pair* %75, i32 1
  store %struct.value_name_pair* %76, %struct.value_name_pair** %11, align 8
  br label %60

77:                                               ; preds = %70, %60
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load %struct.value_name_pair*, %struct.value_name_pair** %11, align 8
  %83 = getelementptr inbounds %struct.value_name_pair, %struct.value_name_pair* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load i8**, i8*** %9, align 8
  store i8* %84, i8** %85, align 8
  br label %86

86:                                               ; preds = %81, %77
  store i32 1, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %58, %18
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
