; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_asn1.c_asn1_oid_decode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_asn1.c_asn1_oid_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_ctx = type { i8*, i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ASN1_ERR_DEC_BADVALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn1_ctx*, i8*, i64**, i32*)* @asn1_oid_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_oid_decode(%struct.asn1_ctx* %0, i8* %1, i64** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.asn1_ctx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  store %struct.asn1_ctx* %0, %struct.asn1_ctx** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64** %2, i64*** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.asn1_ctx*, %struct.asn1_ctx** %6, align 8
  %15 = getelementptr inbounds %struct.asn1_ctx, %struct.asn1_ctx* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = ptrtoint i8* %13 to i64
  %18 = ptrtoint i8* %16 to i64
  %19 = sub i64 %17, %18
  %20 = add nsw i64 %19, 1
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ult i32 %22, 2
  br i1 %23, label %31, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  %26 = zext i32 %25 to i64
  %27 = load i32, i32* @UINT_MAX, align 4
  %28 = sext i32 %27 to i64
  %29 = udiv i64 %28, 8
  %30 = icmp ugt i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %4
  store i32 0, i32* %5, align 4
  br label %116

32:                                               ; preds = %24
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call i64* @kmalloc_array(i32 %33, i32 8, i32 %34)
  %36 = load i64**, i64*** %8, align 8
  store i64* %35, i64** %36, align 8
  %37 = load i64**, i64*** %8, align 8
  %38 = load i64*, i64** %37, align 8
  %39 = icmp eq i64* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %116

41:                                               ; preds = %32
  %42 = load i64**, i64*** %8, align 8
  %43 = load i64*, i64** %42, align 8
  store i64* %43, i64** %12, align 8
  %44 = load %struct.asn1_ctx*, %struct.asn1_ctx** %6, align 8
  %45 = call i32 @asn1_subid_decode(%struct.asn1_ctx* %44, i64* %10)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = load i64**, i64*** %8, align 8
  %49 = load i64*, i64** %48, align 8
  %50 = call i32 @kfree(i64* %49)
  %51 = load i64**, i64*** %8, align 8
  store i64* null, i64** %51, align 8
  store i32 0, i32* %5, align 4
  br label %116

52:                                               ; preds = %41
  %53 = load i64, i64* %10, align 8
  %54 = icmp ult i64 %53, 40
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i64*, i64** %12, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  store i64 0, i64* %57, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64*, i64** %12, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  store i64 %58, i64* %60, align 8
  br label %79

61:                                               ; preds = %52
  %62 = load i64, i64* %10, align 8
  %63 = icmp ult i64 %62, 80
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i64*, i64** %12, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  store i64 1, i64* %66, align 8
  %67 = load i64, i64* %10, align 8
  %68 = sub i64 %67, 40
  %69 = load i64*, i64** %12, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  store i64 %68, i64* %70, align 8
  br label %78

71:                                               ; preds = %61
  %72 = load i64*, i64** %12, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  store i64 2, i64* %73, align 8
  %74 = load i64, i64* %10, align 8
  %75 = sub i64 %74, 80
  %76 = load i64*, i64** %12, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 1
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %71, %64
  br label %79

79:                                               ; preds = %78, %55
  %80 = load i32*, i32** %9, align 8
  store i32 2, i32* %80, align 4
  %81 = load i64*, i64** %12, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 2
  store i64* %82, i64** %12, align 8
  br label %83

83:                                               ; preds = %114, %79
  %84 = load %struct.asn1_ctx*, %struct.asn1_ctx** %6, align 8
  %85 = getelementptr inbounds %struct.asn1_ctx, %struct.asn1_ctx* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = icmp ult i8* %86, %87
  br i1 %88, label %89, label %115

89:                                               ; preds = %83
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %90, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ugt i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load i32, i32* @ASN1_ERR_DEC_BADVALUE, align 4
  %97 = load %struct.asn1_ctx*, %struct.asn1_ctx** %6, align 8
  %98 = getelementptr inbounds %struct.asn1_ctx, %struct.asn1_ctx* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  %99 = load i64**, i64*** %8, align 8
  %100 = load i64*, i64** %99, align 8
  %101 = call i32 @kfree(i64* %100)
  %102 = load i64**, i64*** %8, align 8
  store i64* null, i64** %102, align 8
  store i32 0, i32* %5, align 4
  br label %116

103:                                              ; preds = %89
  %104 = load %struct.asn1_ctx*, %struct.asn1_ctx** %6, align 8
  %105 = load i64*, i64** %12, align 8
  %106 = getelementptr inbounds i64, i64* %105, i32 1
  store i64* %106, i64** %12, align 8
  %107 = call i32 @asn1_subid_decode(%struct.asn1_ctx* %104, i64* %105)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %103
  %110 = load i64**, i64*** %8, align 8
  %111 = load i64*, i64** %110, align 8
  %112 = call i32 @kfree(i64* %111)
  %113 = load i64**, i64*** %8, align 8
  store i64* null, i64** %113, align 8
  store i32 0, i32* %5, align 4
  br label %116

114:                                              ; preds = %103
  br label %83

115:                                              ; preds = %83
  store i32 1, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %109, %95, %47, %40, %31
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i64* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @asn1_subid_decode(%struct.asn1_ctx*, i64*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
