; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_construct_tcon.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_cifs_construct_tcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i64, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.cifs_sb_info = type { i32, i32 }
%struct.cifs_ses = type { i64, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32 }
%struct.smb_vol = type { i32, i32, %struct.smb_vol*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cifs_tcp_ses_lock = common dso_local global i32 0, align 4
@CIFS_MOUNT_POSIX_PATHS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cifs_tcon* (%struct.cifs_sb_info*, i8*)* @cifs_construct_tcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cifs_tcon* @cifs_construct_tcon(%struct.cifs_sb_info* %0, i8* %1) #0 {
  %3 = alloca %struct.cifs_tcon*, align 8
  %4 = alloca %struct.cifs_sb_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifs_tcon*, align 8
  %8 = alloca %struct.cifs_ses*, align 8
  %9 = alloca %struct.cifs_tcon*, align 8
  %10 = alloca %struct.smb_vol*, align 8
  store %struct.cifs_sb_info* %0, %struct.cifs_sb_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %12 = call %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info* %11)
  store %struct.cifs_tcon* %12, %struct.cifs_tcon** %7, align 8
  store %struct.cifs_tcon* null, %struct.cifs_tcon** %9, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.smb_vol* @kzalloc(i32 72, i32 %13)
  store %struct.smb_vol* %14, %struct.smb_vol** %10, align 8
  %15 = load %struct.smb_vol*, %struct.smb_vol** %10, align 8
  %16 = icmp eq %struct.smb_vol* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.cifs_tcon* @ERR_PTR(i32 %19)
  store %struct.cifs_tcon* %20, %struct.cifs_tcon** %3, align 8
  br label %167

21:                                               ; preds = %2
  %22 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %23 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.smb_vol*, %struct.smb_vol** %10, align 8
  %26 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %25, i32 0, i32 12
  store i32 %24, i32* %26, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.smb_vol*, %struct.smb_vol** %10, align 8
  %29 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %28, i32 0, i32 11
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.smb_vol*, %struct.smb_vol** %10, align 8
  %32 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %31, i32 0, i32 10
  store i8* %30, i8** %32, align 8
  %33 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %34 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.smb_vol*, %struct.smb_vol** %10, align 8
  %37 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %36, i32 0, i32 9
  store i32 %35, i32* %37, align 8
  %38 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %39 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.smb_vol*, %struct.smb_vol** %10, align 8
  %42 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 4
  %43 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %44 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.smb_vol*, %struct.smb_vol** %10, align 8
  %47 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 8
  %48 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %49 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.smb_vol*, %struct.smb_vol** %10, align 8
  %52 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %54 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.smb_vol*, %struct.smb_vol** %10, align 8
  %57 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %59 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = load %struct.smb_vol*, %struct.smb_vol** %10, align 8
  %65 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %67 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.smb_vol*, %struct.smb_vol** %10, align 8
  %72 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %74 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.smb_vol*, %struct.smb_vol** %10, align 8
  %79 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.smb_vol*, %struct.smb_vol** %10, align 8
  %81 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %82 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = call i32 @cifs_set_vol_auth(%struct.smb_vol* %80, %struct.TYPE_4__* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %21
  %88 = load i32, i32* %6, align 4
  %89 = call %struct.cifs_tcon* @ERR_PTR(i32 %88)
  store %struct.cifs_tcon* %89, %struct.cifs_tcon** %9, align 8
  br label %155

90:                                               ; preds = %21
  %91 = call i32 @spin_lock(i32* @cifs_tcp_ses_lock)
  %92 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %93 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = call i32 @spin_unlock(i32* @cifs_tcp_ses_lock)
  %101 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %102 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = load %struct.smb_vol*, %struct.smb_vol** %10, align 8
  %107 = call %struct.cifs_tcon* @cifs_get_smb_ses(%struct.TYPE_5__* %105, %struct.smb_vol* %106)
  %108 = bitcast %struct.cifs_tcon* %107 to %struct.cifs_ses*
  store %struct.cifs_ses* %108, %struct.cifs_ses** %8, align 8
  %109 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %110 = bitcast %struct.cifs_ses* %109 to %struct.cifs_tcon*
  %111 = call i64 @IS_ERR(%struct.cifs_tcon* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %90
  %114 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %115 = bitcast %struct.cifs_ses* %114 to %struct.cifs_tcon*
  store %struct.cifs_tcon* %115, %struct.cifs_tcon** %9, align 8
  %116 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %117 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = call i32 @cifs_put_tcp_session(%struct.TYPE_5__* %120, i32 0)
  br label %155

122:                                              ; preds = %90
  %123 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %124 = bitcast %struct.cifs_ses* %123 to %struct.cifs_tcon*
  %125 = load %struct.smb_vol*, %struct.smb_vol** %10, align 8
  %126 = call %struct.cifs_tcon* @cifs_get_tcon(%struct.cifs_tcon* %124, %struct.smb_vol* %125)
  store %struct.cifs_tcon* %126, %struct.cifs_tcon** %9, align 8
  %127 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %128 = call i64 @IS_ERR(%struct.cifs_tcon* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %132 = bitcast %struct.cifs_ses* %131 to %struct.cifs_tcon*
  %133 = call i32 @cifs_put_smb_ses(%struct.cifs_tcon* %132)
  br label %155

134:                                              ; preds = %122
  %135 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %136 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load i32, i32* @CIFS_MOUNT_POSIX_PATHS, align 4
  %141 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %142 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %139, %134
  %146 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %147 = bitcast %struct.cifs_ses* %146 to %struct.cifs_tcon*
  %148 = call i64 @cap_unix(%struct.cifs_tcon* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %152 = load %struct.smb_vol*, %struct.smb_vol** %10, align 8
  %153 = call i32 @reset_cifs_unix_caps(i32 0, %struct.cifs_tcon* %151, i32* null, %struct.smb_vol* %152)
  br label %154

154:                                              ; preds = %150, %145
  br label %155

155:                                              ; preds = %154, %130, %113, %87
  %156 = load %struct.smb_vol*, %struct.smb_vol** %10, align 8
  %157 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %156, i32 0, i32 2
  %158 = load %struct.smb_vol*, %struct.smb_vol** %157, align 8
  %159 = call i32 @kfree(%struct.smb_vol* %158)
  %160 = load %struct.smb_vol*, %struct.smb_vol** %10, align 8
  %161 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @kzfree(i32 %162)
  %164 = load %struct.smb_vol*, %struct.smb_vol** %10, align 8
  %165 = call i32 @kfree(%struct.smb_vol* %164)
  %166 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  store %struct.cifs_tcon* %166, %struct.cifs_tcon** %3, align 8
  br label %167

167:                                              ; preds = %155, %17
  %168 = load %struct.cifs_tcon*, %struct.cifs_tcon** %3, align 8
  ret %struct.cifs_tcon* %168
}

declare dso_local %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info*) #1

declare dso_local %struct.smb_vol* @kzalloc(i32, i32) #1

declare dso_local %struct.cifs_tcon* @ERR_PTR(i32) #1

declare dso_local i32 @cifs_set_vol_auth(%struct.smb_vol*, %struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.cifs_tcon* @cifs_get_smb_ses(%struct.TYPE_5__*, %struct.smb_vol*) #1

declare dso_local i64 @IS_ERR(%struct.cifs_tcon*) #1

declare dso_local i32 @cifs_put_tcp_session(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.cifs_tcon* @cifs_get_tcon(%struct.cifs_tcon*, %struct.smb_vol*) #1

declare dso_local i32 @cifs_put_smb_ses(%struct.cifs_tcon*) #1

declare dso_local i64 @cap_unix(%struct.cifs_tcon*) #1

declare dso_local i32 @reset_cifs_unix_caps(i32, %struct.cifs_tcon*, i32*, %struct.smb_vol*) #1

declare dso_local i32 @kfree(%struct.smb_vol*) #1

declare dso_local i32 @kzfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
