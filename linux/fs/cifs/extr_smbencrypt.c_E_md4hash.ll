; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbencrypt.c_E_md4hash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbencrypt.c_E_md4hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @E_md4hash(i8* %0, i8* %1, %struct.nls_table* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nls_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [129 x i64], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.nls_table* %2, %struct.nls_table** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = getelementptr inbounds [129 x i64], [129 x i64]* %9, i64 0, i64 0
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.nls_table*, %struct.nls_table** %6, align 8
  %16 = call i32 @cifs_strtoUTF16(i64* %13, i8* %14, i32 128, %struct.nls_table* %15)
  store i32 %16, i32* %8, align 4
  br label %19

17:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %18 = getelementptr inbounds [129 x i64], [129 x i64]* %9, i64 0, i64 0
  store i64 0, i64* %18, align 16
  br label %19

19:                                               ; preds = %17, %12
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds [129 x i64], [129 x i64]* %9, i64 0, i64 0
  %22 = bitcast i64* %21 to i8*
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @mdfour(i8* %20, i8* %22, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = getelementptr inbounds [129 x i64], [129 x i64]* %9, i64 0, i64 0
  %29 = call i32 @memzero_explicit(i64* %28, i32 1032)
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local i32 @cifs_strtoUTF16(i64*, i8*, i32, %struct.nls_table*) #1

declare dso_local i32 @mdfour(i8*, i8*, i32) #1

declare dso_local i32 @memzero_explicit(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
