; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_fabric_lib.c_iscsi_parse_pr_out_transport_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_fabric_lib.c_iscsi_parse_pr_out_transport_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"Illegal format code: 0x%02x for iSCSI Initiator Transport ID\0A\00", align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"LIO-Target Extracted add_len: %hu does not match calculated tid_len: %u, using tid_len instead\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c",i,0x\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"Unable to locate \22,i,0x\22 separator for Initiator port identifier: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.se_portal_group*, i8*, i32*, i8**)* @iscsi_parse_pr_out_transport_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @iscsi_parse_pr_out_transport_id(%struct.se_portal_group* %0, i8* %1, i32* %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.se_portal_group*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.se_portal_group* %0, %struct.se_portal_group** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, 192
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 64
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %15, align 4
  %28 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i8* null, i8** %5, align 8
  br label %113

29:                                               ; preds = %23, %4
  %30 = load i32*, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %69

32:                                               ; preds = %29
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = call i32 @get_unaligned_be16(i8* %34)
  store i32 %35, i32* %14, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 4
  %38 = call i32 @strlen(i8* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 4
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = sub nsw i32 0, %43
  %45 = and i32 %44, 3
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %32
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %48, %32
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i32, i32* %14, align 4
  %59 = add nsw i32 %58, 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @pr_debug(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = load i32*, i32** %8, align 8
  store i32 %62, i32* %63, align 4
  br label %68

64:                                               ; preds = %52
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 4
  %67 = load i32*, i32** %8, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %57
  br label %69

69:                                               ; preds = %68, %29
  %70 = load i32, i32* %15, align 4
  %71 = icmp eq i32 %70, 64
  br i1 %71, label %72, label %110

72:                                               ; preds = %69
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 4
  %75 = call i8* @strstr(i8* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %75, i8** %10, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %72
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 4
  %81 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i8* %80)
  store i8* null, i8** %5, align 8
  br label %113

82:                                               ; preds = %72
  %83 = load i8*, i8** %10, align 8
  store i8 0, i8* %83, align 1
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 5
  store i8* %85, i8** %10, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load i8**, i8*** %9, align 8
  store i8* %86, i8** %87, align 8
  store i32 0, i32* %13, align 4
  br label %88

88:                                               ; preds = %106, %82
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %89, 12
  br i1 %90, label %91, label %109

91:                                               ; preds = %88
  %92 = load i8*, i8** %10, align 8
  %93 = load i8, i8* %92, align 1
  %94 = call i64 @isdigit(i8 signext %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i8*, i8** %10, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %10, align 8
  br label %106

99:                                               ; preds = %91
  %100 = load i8*, i8** %10, align 8
  %101 = load i8, i8* %100, align 1
  %102 = call signext i8 @tolower(i8 signext %101)
  %103 = load i8*, i8** %10, align 8
  store i8 %102, i8* %103, align 1
  %104 = load i8*, i8** %10, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %10, align 8
  br label %106

106:                                              ; preds = %99, %96
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  br label %88

109:                                              ; preds = %88
  br label %110

110:                                              ; preds = %109, %69
  %111 = load i8*, i8** %7, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 4
  store i8* %112, i8** %5, align 8
  br label %113

113:                                              ; preds = %110, %78, %26
  %114 = load i8*, i8** %5, align 8
  ret i8* %114
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @get_unaligned_be16(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local signext i8 @tolower(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
