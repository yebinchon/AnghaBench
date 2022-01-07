; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsacl.c_parse_sid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsacl.c_parse_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_sid = type { i32, i32*, i32 }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ACL too small to parse SID %p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_sid*, i8*)* @parse_sid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_sid(%struct.cifs_sid* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cifs_sid*, align 8
  %5 = alloca i8*, align 8
  store %struct.cifs_sid* %0, %struct.cifs_sid** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %8 = bitcast %struct.cifs_sid* %7 to i8*
  %9 = getelementptr inbounds i8, i8* %8, i64 8
  %10 = icmp ult i8* %6, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @VFS, align 4
  %13 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %14 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.cifs_sid* %13)
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %11
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
