; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_build_posix_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_build_posix_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb2_posix_neg_context = type { i32*, i32, i32 }

@SMB2_POSIX_EXTENSIONS_AVAILABLE = common dso_local global i32 0, align 4
@POSIX_CTXT_DATA_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smb2_posix_neg_context*)* @build_posix_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_posix_ctxt(%struct.smb2_posix_neg_context* %0) #0 {
  %2 = alloca %struct.smb2_posix_neg_context*, align 8
  store %struct.smb2_posix_neg_context* %0, %struct.smb2_posix_neg_context** %2, align 8
  %3 = load i32, i32* @SMB2_POSIX_EXTENSIONS_AVAILABLE, align 4
  %4 = load %struct.smb2_posix_neg_context*, %struct.smb2_posix_neg_context** %2, align 8
  %5 = getelementptr inbounds %struct.smb2_posix_neg_context, %struct.smb2_posix_neg_context* %4, i32 0, i32 2
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @POSIX_CTXT_DATA_LEN, align 4
  %7 = call i32 @cpu_to_le16(i32 %6)
  %8 = load %struct.smb2_posix_neg_context*, %struct.smb2_posix_neg_context** %2, align 8
  %9 = getelementptr inbounds %struct.smb2_posix_neg_context, %struct.smb2_posix_neg_context* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  %10 = load %struct.smb2_posix_neg_context*, %struct.smb2_posix_neg_context** %2, align 8
  %11 = getelementptr inbounds %struct.smb2_posix_neg_context, %struct.smb2_posix_neg_context* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 147, i32* %13, align 4
  %14 = load %struct.smb2_posix_neg_context*, %struct.smb2_posix_neg_context** %2, align 8
  %15 = getelementptr inbounds %struct.smb2_posix_neg_context, %struct.smb2_posix_neg_context* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 173, i32* %17, align 4
  %18 = load %struct.smb2_posix_neg_context*, %struct.smb2_posix_neg_context** %2, align 8
  %19 = getelementptr inbounds %struct.smb2_posix_neg_context, %struct.smb2_posix_neg_context* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 37, i32* %21, align 4
  %22 = load %struct.smb2_posix_neg_context*, %struct.smb2_posix_neg_context** %2, align 8
  %23 = getelementptr inbounds %struct.smb2_posix_neg_context, %struct.smb2_posix_neg_context* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  store i32 80, i32* %25, align 4
  %26 = load %struct.smb2_posix_neg_context*, %struct.smb2_posix_neg_context** %2, align 8
  %27 = getelementptr inbounds %struct.smb2_posix_neg_context, %struct.smb2_posix_neg_context* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  store i32 156, i32* %29, align 4
  %30 = load %struct.smb2_posix_neg_context*, %struct.smb2_posix_neg_context** %2, align 8
  %31 = getelementptr inbounds %struct.smb2_posix_neg_context, %struct.smb2_posix_neg_context* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 5
  store i32 180, i32* %33, align 4
  %34 = load %struct.smb2_posix_neg_context*, %struct.smb2_posix_neg_context** %2, align 8
  %35 = getelementptr inbounds %struct.smb2_posix_neg_context, %struct.smb2_posix_neg_context* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 6
  store i32 17, i32* %37, align 4
  %38 = load %struct.smb2_posix_neg_context*, %struct.smb2_posix_neg_context** %2, align 8
  %39 = getelementptr inbounds %struct.smb2_posix_neg_context, %struct.smb2_posix_neg_context* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 7
  store i32 231, i32* %41, align 4
  %42 = load %struct.smb2_posix_neg_context*, %struct.smb2_posix_neg_context** %2, align 8
  %43 = getelementptr inbounds %struct.smb2_posix_neg_context, %struct.smb2_posix_neg_context* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 8
  store i32 180, i32* %45, align 4
  %46 = load %struct.smb2_posix_neg_context*, %struct.smb2_posix_neg_context** %2, align 8
  %47 = getelementptr inbounds %struct.smb2_posix_neg_context, %struct.smb2_posix_neg_context* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 9
  store i32 35, i32* %49, align 4
  %50 = load %struct.smb2_posix_neg_context*, %struct.smb2_posix_neg_context** %2, align 8
  %51 = getelementptr inbounds %struct.smb2_posix_neg_context, %struct.smb2_posix_neg_context* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 10
  store i32 131, i32* %53, align 4
  %54 = load %struct.smb2_posix_neg_context*, %struct.smb2_posix_neg_context** %2, align 8
  %55 = getelementptr inbounds %struct.smb2_posix_neg_context, %struct.smb2_posix_neg_context* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 11
  store i32 222, i32* %57, align 4
  %58 = load %struct.smb2_posix_neg_context*, %struct.smb2_posix_neg_context** %2, align 8
  %59 = getelementptr inbounds %struct.smb2_posix_neg_context, %struct.smb2_posix_neg_context* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 12
  store i32 150, i32* %61, align 4
  %62 = load %struct.smb2_posix_neg_context*, %struct.smb2_posix_neg_context** %2, align 8
  %63 = getelementptr inbounds %struct.smb2_posix_neg_context, %struct.smb2_posix_neg_context* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 13
  store i32 139, i32* %65, align 4
  %66 = load %struct.smb2_posix_neg_context*, %struct.smb2_posix_neg_context** %2, align 8
  %67 = getelementptr inbounds %struct.smb2_posix_neg_context, %struct.smb2_posix_neg_context* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 14
  store i32 205, i32* %69, align 4
  %70 = load %struct.smb2_posix_neg_context*, %struct.smb2_posix_neg_context** %2, align 8
  %71 = getelementptr inbounds %struct.smb2_posix_neg_context, %struct.smb2_posix_neg_context* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 15
  store i32 124, i32* %73, align 4
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
