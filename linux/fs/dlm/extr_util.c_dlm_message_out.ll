; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_util.c_dlm_message_out.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_util.c_dlm_message_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_message = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_message_out(%struct.dlm_message* %0) #0 {
  %2 = alloca %struct.dlm_message*, align 8
  store %struct.dlm_message* %0, %struct.dlm_message** %2, align 8
  %3 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %4 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %3, i32 0, i32 18
  %5 = call i32 @header_out(i32* %4)
  %6 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %7 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %6, i32 0, i32 17
  %8 = load i8*, i8** %7, align 8
  %9 = call i8* @cpu_to_le32(i8* %8)
  %10 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %11 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %10, i32 0, i32 17
  store i8* %9, i8** %11, align 8
  %12 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %13 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %12, i32 0, i32 16
  %14 = load i8*, i8** %13, align 8
  %15 = call i8* @cpu_to_le32(i8* %14)
  %16 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %17 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %16, i32 0, i32 16
  store i8* %15, i8** %17, align 8
  %18 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %19 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %18, i32 0, i32 15
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @cpu_to_le32(i8* %20)
  %22 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %23 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %22, i32 0, i32 15
  store i8* %21, i8** %23, align 8
  %24 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %25 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %24, i32 0, i32 14
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @cpu_to_le32(i8* %26)
  %28 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %29 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %28, i32 0, i32 14
  store i8* %27, i8** %29, align 8
  %30 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %31 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %30, i32 0, i32 13
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @cpu_to_le32(i8* %32)
  %34 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %35 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %34, i32 0, i32 13
  store i8* %33, i8** %35, align 8
  %36 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %37 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %36, i32 0, i32 12
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @cpu_to_le32(i8* %38)
  %40 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %41 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %40, i32 0, i32 12
  store i8* %39, i8** %41, align 8
  %42 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %43 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %42, i32 0, i32 11
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @cpu_to_le32(i8* %44)
  %46 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %47 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %46, i32 0, i32 11
  store i8* %45, i8** %47, align 8
  %48 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %49 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %48, i32 0, i32 10
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @cpu_to_le32(i8* %50)
  %52 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %53 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %52, i32 0, i32 10
  store i8* %51, i8** %53, align 8
  %54 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %55 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %54, i32 0, i32 9
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @cpu_to_le32(i8* %56)
  %58 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %59 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %58, i32 0, i32 9
  store i8* %57, i8** %59, align 8
  %60 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %61 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %60, i32 0, i32 8
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @cpu_to_le32(i8* %62)
  %64 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %65 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %64, i32 0, i32 8
  store i8* %63, i8** %65, align 8
  %66 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %67 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %66, i32 0, i32 7
  %68 = load i8*, i8** %67, align 8
  %69 = call i8* @cpu_to_le32(i8* %68)
  %70 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %71 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %70, i32 0, i32 7
  store i8* %69, i8** %71, align 8
  %72 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %73 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %72, i32 0, i32 6
  %74 = load i8*, i8** %73, align 8
  %75 = call i8* @cpu_to_le32(i8* %74)
  %76 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %77 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %76, i32 0, i32 6
  store i8* %75, i8** %77, align 8
  %78 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %79 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %78, i32 0, i32 5
  %80 = load i8*, i8** %79, align 8
  %81 = call i8* @cpu_to_le32(i8* %80)
  %82 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %83 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %82, i32 0, i32 5
  store i8* %81, i8** %83, align 8
  %84 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %85 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %84, i32 0, i32 4
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @cpu_to_le32(i8* %86)
  %88 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %89 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %91 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @cpu_to_le32(i8* %92)
  %94 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %95 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  %96 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %97 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @cpu_to_le32(i8* %98)
  %100 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %101 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  %102 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %103 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i8* @cpu_to_le32(i8* %104)
  %106 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %107 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %109 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i8* @to_dlm_errno(i8* %110)
  %112 = call i8* @cpu_to_le32(i8* %111)
  %113 = load %struct.dlm_message*, %struct.dlm_message** %2, align 8
  %114 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  ret void
}

declare dso_local i32 @header_out(i32*) #1

declare dso_local i8* @cpu_to_le32(i8*) #1

declare dso_local i8* @to_dlm_errno(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
