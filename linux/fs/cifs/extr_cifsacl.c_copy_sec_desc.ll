; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsacl.c_copy_sec_desc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsacl.c_copy_sec_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ntsd = type { i8*, i8*, i64, i8*, i32, i32 }
%struct.cifs_sid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cifs_ntsd*, %struct.cifs_ntsd*, i32)* @copy_sec_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_sec_desc(%struct.cifs_ntsd* %0, %struct.cifs_ntsd* %1, i32 %2) #0 {
  %4 = alloca %struct.cifs_ntsd*, align 8
  %5 = alloca %struct.cifs_ntsd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifs_sid*, align 8
  %8 = alloca %struct.cifs_sid*, align 8
  %9 = alloca %struct.cifs_sid*, align 8
  %10 = alloca %struct.cifs_sid*, align 8
  store %struct.cifs_ntsd* %0, %struct.cifs_ntsd** %4, align 8
  store %struct.cifs_ntsd* %1, %struct.cifs_ntsd** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %4, align 8
  %12 = getelementptr inbounds %struct.cifs_ntsd, %struct.cifs_ntsd* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %5, align 8
  %15 = getelementptr inbounds %struct.cifs_ntsd, %struct.cifs_ntsd* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %4, align 8
  %17 = getelementptr inbounds %struct.cifs_ntsd, %struct.cifs_ntsd* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %5, align 8
  %20 = getelementptr inbounds %struct.cifs_ntsd, %struct.cifs_ntsd* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = call i8* @cpu_to_le32(i32 40)
  %22 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %5, align 8
  %23 = getelementptr inbounds %struct.cifs_ntsd, %struct.cifs_ntsd* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %5, align 8
  %25 = getelementptr inbounds %struct.cifs_ntsd, %struct.cifs_ntsd* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i8* @cpu_to_le32(i32 %26)
  %28 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %5, align 8
  %29 = getelementptr inbounds %struct.cifs_ntsd, %struct.cifs_ntsd* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i8* @cpu_to_le32(i32 %33)
  %35 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %5, align 8
  %36 = getelementptr inbounds %struct.cifs_ntsd, %struct.cifs_ntsd* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %4, align 8
  %38 = bitcast %struct.cifs_ntsd* %37 to i8*
  %39 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %4, align 8
  %40 = getelementptr inbounds %struct.cifs_ntsd, %struct.cifs_ntsd* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @le32_to_cpu(i8* %41)
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %38, i64 %43
  %45 = bitcast i8* %44 to %struct.cifs_sid*
  store %struct.cifs_sid* %45, %struct.cifs_sid** %7, align 8
  %46 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %5, align 8
  %47 = bitcast %struct.cifs_ntsd* %46 to i8*
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = bitcast i8* %50 to %struct.cifs_sid*
  store %struct.cifs_sid* %51, %struct.cifs_sid** %9, align 8
  %52 = load %struct.cifs_sid*, %struct.cifs_sid** %9, align 8
  %53 = load %struct.cifs_sid*, %struct.cifs_sid** %7, align 8
  %54 = call i32 @cifs_copy_sid(%struct.cifs_sid* %52, %struct.cifs_sid* %53)
  %55 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %4, align 8
  %56 = bitcast %struct.cifs_ntsd* %55 to i8*
  %57 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %4, align 8
  %58 = getelementptr inbounds %struct.cifs_ntsd, %struct.cifs_ntsd* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @le32_to_cpu(i8* %59)
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %56, i64 %61
  %63 = bitcast i8* %62 to %struct.cifs_sid*
  store %struct.cifs_sid* %63, %struct.cifs_sid** %8, align 8
  %64 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %5, align 8
  %65 = bitcast %struct.cifs_ntsd* %64 to i8*
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = getelementptr inbounds i8, i8* %68, i64 4
  %70 = bitcast i8* %69 to %struct.cifs_sid*
  store %struct.cifs_sid* %70, %struct.cifs_sid** %10, align 8
  %71 = load %struct.cifs_sid*, %struct.cifs_sid** %10, align 8
  %72 = load %struct.cifs_sid*, %struct.cifs_sid** %8, align 8
  %73 = call i32 @cifs_copy_sid(%struct.cifs_sid* %71, %struct.cifs_sid* %72)
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @cifs_copy_sid(%struct.cifs_sid*, %struct.cifs_sid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
