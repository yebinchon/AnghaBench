; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_ctl.c_snic_ver_enc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_ctl.c_snic_ver_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"Invalid version string [%s].\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @snic_ver_enc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snic_ver_enc(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 16, i1 false)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = icmp sgt i32 %12, 15
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = icmp slt i32 %16, 7
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %1
  br label %85

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %40, %29, %19
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %8, align 8
  %23 = load i8, i8* %21, align 1
  store i8 %23, i8* %7, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %20
  %26 = load i8, i8* %7, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 46
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %20

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = icmp sgt i32 %33, 3
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i8, i8* %7, align 1
  %37 = call i32 @isdigit(i8 signext %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %32
  br label %85

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, 10
  %46 = load i8, i8* %7, align 1
  %47 = sext i8 %46 to i32
  %48 = sub nsw i32 %47, 48
  %49 = add nsw i32 %45, %48
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %51
  store i32 %49, i32* %52, align 4
  br label %20

53:                                               ; preds = %20
  store i32 3, i32* %5, align 4
  br label %54

54:                                               ; preds = %65, %53
  %55 = load i32, i32* %5, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 255
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %85

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %5, align 4
  br label %54

68:                                               ; preds = %54
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %70 = load i32, i32* %69, align 16
  %71 = shl i32 %70, 24
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 16
  %75 = or i32 %71, %74
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %77 = load i32, i32* %76, align 8
  %78 = shl i32 %77, 8
  %79 = or i32 %75, %78
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %79, %81
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %68, %63, %39, %18
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i8*, i8** %3, align 8
  %90 = call i32 @SNIC_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %89)
  store i32 -1, i32* %2, align 4
  br label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %88
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @isdigit(i8 signext) #2

declare dso_local i32 @SNIC_ERR(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
