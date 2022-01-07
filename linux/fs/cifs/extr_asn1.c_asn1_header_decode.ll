; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_asn1.c_asn1_header_decode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_asn1.c_asn1_header_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_ctx = type { i8* }

@ASN1_PRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.asn1_ctx*, i8**, i32*, i32*, i32*)* @asn1_header_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @asn1_header_decode(%struct.asn1_ctx* %0, i8** %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8, align 1
  %7 = alloca %struct.asn1_ctx*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.asn1_ctx* %0, %struct.asn1_ctx** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.asn1_ctx*, %struct.asn1_ctx** %7, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = call i32 @asn1_id_decode(%struct.asn1_ctx* %14, i32* %15, i32* %16, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store i8 0, i8* %6, align 1
  br label %49

21:                                               ; preds = %5
  %22 = load %struct.asn1_ctx*, %struct.asn1_ctx** %7, align 8
  %23 = call i32 @asn1_length_decode(%struct.asn1_ctx* %22, i32* %12, i32* %13)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i8 0, i8* %6, align 1
  br label %49

26:                                               ; preds = %21
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ASN1_PRI, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i8 0, i8* %6, align 1
  br label %49

35:                                               ; preds = %31, %26
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.asn1_ctx*, %struct.asn1_ctx** %7, align 8
  %40 = getelementptr inbounds %struct.asn1_ctx, %struct.asn1_ctx* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8**, i8*** %8, align 8
  store i8* %44, i8** %45, align 8
  br label %48

46:                                               ; preds = %35
  %47 = load i8**, i8*** %8, align 8
  store i8* null, i8** %47, align 8
  br label %48

48:                                               ; preds = %46, %38
  store i8 1, i8* %6, align 1
  br label %49

49:                                               ; preds = %48, %34, %25, %20
  %50 = load i8, i8* %6, align 1
  ret i8 %50
}

declare dso_local i32 @asn1_id_decode(%struct.asn1_ctx*, i32*, i32*, i32*) #1

declare dso_local i32 @asn1_length_decode(%struct.asn1_ctx*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
