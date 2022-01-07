; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_close_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_close_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }
%struct.cifs_fid = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)* @smb2_close_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb2_close_dir(i32 %0, %struct.cifs_tcon* %1, %struct.cifs_fid* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_tcon*, align 8
  %6 = alloca %struct.cifs_fid*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %5, align 8
  store %struct.cifs_fid* %2, %struct.cifs_fid** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %9 = load %struct.cifs_fid*, %struct.cifs_fid** %6, align 8
  %10 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cifs_fid*, %struct.cifs_fid** %6, align 8
  %13 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @SMB2_close(i32 %7, %struct.cifs_tcon* %8, i32 %11, i32 %14)
  ret i32 %15
}

declare dso_local i32 @SMB2_close(i32, %struct.cifs_tcon*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
